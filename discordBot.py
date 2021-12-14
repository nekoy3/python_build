#py -3 -m pip install -U discord.py
# インストールした discord.py を読み込む
import discord
import sqlite3
import os

#ユーザー情報の追加

# 接続に必要なオブジェクトを生成
client = discord.Client()

# 自分のBotのアクセストークンに置き換えてください
TOKEN = 'token' #pushする前にトークンを削除

dbname = "datalist.db"
if os.path.exists(dbname):
    print("データベースファイルを認識しました。起動中はファイルを操作しないでください。")
else:
    conn = sqlite3.connect(dbname)
    # SQLiteを操作するためのカーソルを作成
    cur = conn.cursor()

    # テーブルの作成
    cur.execute(
        'CREATE TABLE items(user_id INT, user_name STRING, operator boolean)'
    )
    #説明文挿入用フィールド(description)
    dList = ["0","description"]
    cur.execute(
            "INSERT INTO items ( user_id, user_name ) values ( ? , ? )",
    dList)
    conn.commit()
    conn.close()
    print("データベースファイルとテーブルを新規に作成しました。起動中はファイルを操作しないでください。")


#初期設定が行われているかを判別する（一人でもフィールドがあればTrue）
def is_init():
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute("SELECT * FROM items")
    init = cur.fetchall()
    conn.close()
    #description以外のフィールドがあればTrue
    if len(init) > 1:
        return True
    else:
        return False

#コマンド実行時に権限者用コマンドを非権限者が実行したときにはじく処理　operatorフィールドを取得して返す
def break_not_operator_command(uid):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute("SELECT operator FROM items WHERE user_id = '%s'" %uid)
    operator = cur.fetchone()
    conn.close()
    if operator[0] == 1:
        return True
    else:
        return False

#embedメッセージ生成用メソッド
#タイトル、descriptionを引数に設定する
def add_embed(title,descrip):
    embed = discord.Embed( # Embedを定義する
                          title=title,# タイトル
                          color=0x00ff00, # フレーム色指定(今回は緑)
                          description=descrip, # Embedの説明文 必要に応じて
                          )
    embed.set_author(name=client.user, # Botのユーザー名
                     icon_url=client.user.avatar_url # Botのアイコンを設定してみる
                     )
    embed.set_footer(text="Powered by nekoy3")
    return embed

#管理者権限でのみ可能な処理実行後のembed(色がマゼンタ 0xc71585)
def add_embed_special(title,descrip):
    embed = discord.Embed( # Embedを定義する
                          title=title + " (管理者権限処理)",# タイトル
                          color=0xc71585, # フレーム色指定(今回はマゼンタ)
                          description=descrip, # Embedの説明文 必要に応じて
                          )
    embed.set_author(name=client.user, # Botのユーザー名
                     icon_url=client.user.avatar_url # Botのアイコンを設定してみる
                     )
    embed.set_footer(text="Powered by nekoy3")
    return embed

#初期設定で呼び出すメソッド。add_userの機能に加えてoperatorフィールドをtrueにする
def add_init(uid,uname):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    initList = [uid, uname, '1']
    cur.execute(
        "INSERT INTO items ( user_id, user_name, operator ) values ( ? , ? , ? )",
    initList)
    conn.commit()
    conn.close()
    #初期設定完了のembedを返する
    embed = add_embed_special("初期設定完了", "起動時に初期設定を行ったユーザーは、管理者権限コマンドを実行できます。")
    return embed

#実行失敗メッセージ
def add_embed_failed(title,descrip):
    embed = discord.Embed( # Embedを定義する
                          title=title,# タイトル
                          color=0xff0000, # フレーム色指定(今回は赤)
                          description=descrip, # Embedの説明文 必要に応じて
                          )
    embed.set_author(name=client.user, # Botのユーザー名
                     icon_url=client.user.avatar_url # Botのアイコンを設定してみる
                     )
    embed.set_footer(text="Powered by nekoy3")
    return embed


#カラムの追加
def column_add(s):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        'PRAGMA table_info(items)'
    )
    beforeColumn = cur.fetchall()
    for bc in beforeColumn:
        if s == bc[1]:
            embed = add_embed_failed("追加できません。", "追加するカラムは既に存在します。")
            return embed
    cur.execute(
        "ALTER TABLE items ADD COLUMN %s STRING"
     %s)
    cur.execute(
        'PRAGMA table_info(items)'
    )
    newColumn = cur.fetchall()[-1]
    callmsg = "カラムID:" + str(newColumn[0]) + "\nカラム名" + str(newColumn[1]) + "\nカラムのデータ型" + str(newColumn[2]) + "\n"
    conn.close()
    embed = add_embed_special("カラムを追加しました。", callmsg)
    return embed

#カラムの削除
def column_delete(s):
    if s == ("user_id","user_name","operator"):
        embed = add_embed_failed("削除できません。", "削除するカラムはuser_id,user_name,operator以外にしてください。")
        return embed
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        'PRAGMA table_info(items)'
    )
    removeColumn = cur.fetchall()
    for rc in removeColumn:
        if s == rc[1]:
            cur.execute(
                "ALTER TABLE items DROP COLUMN %s"
             %s)
            cur.execute(
                'PRAGMA table_info(items)'
            )
            rmColumn = cur.fetchall()[-1]
            callmsg = "カラムID:" + str(rmColumn[0]) + "\nカラム名" + str(rmColumn[1]) + "\nカラムのデータ型" + str(rmColumn[2]) + "\n"
            conn.close()
            embed = add_embed_special("カラムを削除しました。", callmsg)
            return embed
    embed = add_embed_failed("削除できません。", "削除するカラムは存在しません。")
    return embed

#ユーザーのレコードの追加
def user_add(user):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        "SELECT * FROM items WHERE user_id = %s"
     %user[0])
    if len(cur.fetchall()) == 0: #返り値が存在しない=該当データが存在しない時
        cur.execute(
            "INSERT INTO items ( user_id, user_name ) values ( ? , ? )",
        user)
        conn.commit()
        callmsg = "ユーザID:" + str(user[0]) + "\nユーザ名:" + user[1]
        embed = add_embed("レコードを追加しました。", callmsg)
    else:
        callmsg = "ユーザID:" + str(user[0]) + "\nユーザ名:" + user[1]
        embed = add_embed_failed("レコードは既に追加されています。", callmsg)
    conn.close()
    return embed

#bot終了処理
def stop_bot():
    embed = add_embed_special("終了します。", "起動は再びコンソールから行ってください。")
    return embed

#ユーザーの全カラムをinfoとして表示する
def user_info(name):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        "SELECT * FROM items WHERE user_name = '%s'"
    %name)
    user = cur.fetchall()
    if len(user) == 0:
        callmsg = "ユーザ名:" + name + "は登録されていません。"
        embed = add_embed_failed("ユーザ名が見つかりません。", callmsg)
    else: #user[0]に検索結果のイテレータが存在する [0][1]はid,[0][2]はname。
        callmsg = ""
        cur.execute(
            'PRAGMA table_info(items)'
        )
        columnList = []
        fetchList = cur.fetchall()
        for i in range(len(fetchList)-2):
            #イテレータからカラム名のみを取得しリストに追加
            columnList.append(fetchList[i+2][1])
        for i in range(len(columnList)):
            callmsg += columnList[i] + ":" + str(user[0][i+2]) + "\n"
        embed = add_embed("ユーザID:" + str(user[0][0]) + "\nユーザ名:" + user[0][1] + "についての情報", callmsg)
    conn.close()
    return embed

#カラム(columnName)に対応する説明文(string)をdescriptionレコードにinsertしてembedを返す
def column_edit(columnName, string):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        "UPDATE items SET %s = '%s' WHERE user_name = '%s'"
    %(columnName, string, "description"))
    conn.commit()
    callmsg = columnName + "の説明文を「" + string + "」に変更しました。"
    embed = add_embed_special("description専用レコード操作", callmsg)
    conn.close()
    return embed

#SQL文を実行する
def sql_execute(sql):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(sql)
    callmsg = "SQL文を実行しました。\n" + sql + "\n" + cur.fetchall()
    conn.commit()
    conn.close()
    embed = add_embed_special("SQL文実行", callmsg)
    return embed

#helpメッセージを返す
def help():
    embed = add_embed("ヘルプ", "ヘルプを参照します。")
    #embed.add_field(name="コマンド",value="コマンドの説明")
    embed.add_field(name=">tutorial",value="使い方を説明します。読むことを推奨", inline=False)
    embed.add_field(name=">help",value="このヘルプを参照します。", inline=False)
    embed.add_field(name=">adduser",value="自身の情報を保存するためのフィールドを追加します。\n初期設定です。", inline=False)
    embed.add_field(name=">addcolumn <カラム名>",value="カラムを追加します。（権限者専用）", inline=False)
    embed.add_field(name=">info <Discordユーザー名>",value="ユーザーの情報を参照します。\nユーザー名を入力しない場合、自身の情報を参照します。", inline=False)
    embed.add_field(name=">columnedit <カラム名> <変更内容>",value="カラムの説明文を設定します。（権限者専用）", inline=False)
    embed.add_field(name=">mycolumnedit <カラム名> <変更内容>",value="自身のカラム(ゲーム情報)を設定します。", inline=False)
    embed.add_field(name=">removecolumn <カラム名>",value="特定のカラムを削除します。（権限者専用）\n※データも削除されるので注意してください。", inline=False)
    embed.add_field(name=">SQL <SQL文>",value="SQL文を実行します。（権限者専用）\n>sqhelp で詳細を表示", inline=False)
    embed.add_field(name=">stop",value="botを終了します。", inline=False)
    embed.add_field(name=">neko",value="にゃ～ん", inline=False)
    embed.add_field(name=">columnlist",value="カラム一覧を表示します。", inline=False)
    embed.set_footer(text="Powered by nekoy3")
    return embed

#チュートリアルを返す
def tutorial():
    embed = add_embed("チュートリアル", "チュートリアルを参照します。",)
    embed.add_field(name="What is this?",value="このbotには「情報蓄積機能」があります。\n例えば、権限者が「apex_legends」という項目(カラムと呼びます)を追加し、\nユーザーがapex_legendsのカラムに自身のIDを登録することで、\n自身のIDを他者がinfoコマンドで閲覧できるようになります。", inline=False)
    embed.add_field(name="①自分をデータベースに登録する",value=">adduserコマンドを実行するだけで、infoコマンドで参照できるようになります。", inline=False)
    embed.add_field(name="②自分の情報(ゲームのフレンドコードやID)を登録する",value="「>mycolumnedit カラム名(ゲーム名) 自身の情報」で登録することができます。", inline=False)
    embed.add_field(name="③他者の情報を参照する",value="「>info ユーザー名」で他者の情報を参照することができます。\nユーザー名を入力しない場合、自身の情報を参照します。", inline=False)
    embed.add_field(name="ゲーム項目（カラム）の追加",value="権限者が「>addcolumn カラム名」を実行するだけで追加できるので、追加してもらうようにしましょう。\n「>columnlist」で現在登録できるカラムを参照できます。", inline=False)
    embed.set_footer(text="Powered by nekoy3")
    return embed

#カラム一覧を返す(PRAGMA)
def column_list():
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute("PRAGMA table_info('items')")
    colList = cur.fetchall()

    #descriptionレコードのフィールドをSELECTで取得する。
    cur.execute("SELECT * FROM items WHERE user_name = '%s'" %"description")
    descList = cur.fetchone()

    colNameList = []
    for s in colList:
        colNameList.append(s[1])
    del colNameList[0:3]
    
    descNameList = []
    for s in descList:
        descNameList.append(s)
    del descNameList[0:3]

    conn.commit()
    conn.close()

    embed = add_embed("カラム一覧", "カラム一覧と説明を表示します。")
    for i in range(len(colNameList)):
        embed.add_field(name=colNameList[i],value=descNameList[i], inline=False)
    return embed

# 起動時に動作する処理
@client.event
async def on_ready():
    # 起動したらターミナルにログイン通知が表示される
    print('ログインしました')

# メッセージ受信時に動作する処理
@client.event
async def on_message(message):
    # メッセージ送信者がBotだった場合は無視する
    if message.author.bot or message.content.startswith('>') == False:
        return

    #is_initがFalseでbuildコマンドが実行されたら、実行者のフィールドを挿入する
    if message.content.startswith('>build') and is_init() == False:
        uid = str(message.author.id)
        uname = await client.fetch_user(uid)
        embed = add_init(uid, str(uname))
        await message.channel.send(embed=embed)
        return

    #オペレーターが存在しない場合初期設定をするように促しreturnする
    if is_init() == False:
        await message.channel.send("オペレーターが存在しません。オーナーが「/build」を入力して初期設定を行ってください。")
        return

    # 「/neko」と発言したら「にゃーん」が返る処理
    elif message.content == '>neko':
        await message.channel.send('にゃーん')

    #  /addcolumn A テーブルに「A」というカラムを追加する。
    elif message.content.startswith('>addcolumn'):
        if break_not_operator_command(message.author.id) == False:
            #非権限者であるというembedを送信し終了
            embed = add_embed_failed("権限がありません。", "権限があるユーザーのみ実行できます。")
            await message.channel.send(embed=embed)
            return
        try:
            columnName = message.content.split(' ')[1]
        except:
            await message.channel.send("カラム名を入力して実行してください。")
            return
        embed = column_add(columnName)
        await message.channel.send(embed=embed)

    #　/adduser 自身のユーザーIDのレコードを追加する。
    elif message.content.startswith('>adduser'):
        user = [message.author.id]
        u_id = await client.fetch_user(user[0])
        user.append(str(u_id))
        embed = user_add(user)
        await message.channel.send(embed=embed)

    # /stopbot ボットを終了する。
    elif message.content.startswith('>stopbot'):
        if break_not_operator_command(message.author.id) == False:
            embed = add_embed_failed("権限がありません。", "権限があるユーザーのみ実行できます。")
            await message.channel.send(embed=embed)
            return
        embed = stop_bot()
        await message.channel.send(embed=embed)
        await client.close()

    # /info @を除いたユーザ名 その人の情報を取得する。
    elif message.content.startswith('>info'):
        try:
            info = message.content.split(' ')[1]
        except:
            user = message.author.id
            u_id = await client.fetch_user(user)
            info = str(u_id)
        if info.startswith('@'):
            info = info.replace('@','')
        embed = user_info(info)
        await message.channel.send(embed=embed)
    
    # /columnedit カラム名　カラムに対応する説明文をuser_id:0、user_name:infoのレコードに追加する。
    elif message.content.startswith('>columnedit'):
        try:
            columnName = message.content.split(' ')[1]
        except:
            await message.channel.send("カラム名を入力して実行してください。")
            return
        try:
            info = message.content.split(' ')[2]
        except:
            await message.channel.send("情報を入力して実行してください。")
            return
        embed = column_edit(columnName, info)
        await message.channel.send(embed=embed)
    
    # /SQL 実行したいSQL文を入力する。
    elif message.content.startswith('>SQL'):
        if break_not_operator_command(message.author.id) == False:
            embed = add_embed_failed("権限がありません。", "権限があるユーザーのみ実行できます。")
            await message.channel.send(embed=embed)
            return
        sql = message.content.split(' ')[1]
        embed = sql_execute(sql)
        await message.channel.send(embed=embed)
    
    # /sqhelp SQLコマンドの詳細を表示する。
    elif message.content.startswith('>sqhelp'):
        embed = add_embed("SQLコマンドの詳細", "SQL文を実行します。（権限者専用）\n＜警告＞このコマンドは直接データベースを操作するためのコマンドです。\nSQLインジェクションを防止するために、実行するSQL文は、実行前に確認してください。\n基本的には64bit版SQLiteをインストールして操作することを推奨。\nuser_name,user_id,operatorやdescriptionフィールド改変等により、botが動作しなくなっても一切の責任を負いかねます。")
        await message.channel.send(embed=embed)

    # /help ヘルプを表示する。
    elif message.content.startswith('>help'):
        embed = help()
        await message.channel.send(embed=embed)
    
    # チュートリアルを表示する。
    elif message.content.startswith('>tutorial'):
        embed = tutorial()
        await message.channel.send(embed=embed)

    # 存在するカラムのリストを表示する。
    elif message.content.startswith('>columnlist'):
        embed = column_list()
        await message.channel.send(embed=embed)
    
    #カラムを削除する。（権限者専用）
    elif message.content.startswith('>removecolumn'):
        if break_not_operator_command(message.author.id) == False:
            embed = add_embed_failed("権限がありません。", "権限があるユーザーのみ実行できます。")
            await message.channel.send(embed=embed)
            return
        try:
            columnName = message.content.split(' ')[1]
        except:
            await message.channel.send("カラム名を入力して実行してください。")
            return
        embed = column_delete(columnName)
        await message.channel.send(embed=embed)
    
    # コマンドに該当しなかったときにエラーを返す
    else:
        await message.channel.send("コマンドが正しくありません。\n>helpでコマンド一覧を確認できます。")

# Botの起動とDiscordサーバーへの接続
client.run(TOKEN)