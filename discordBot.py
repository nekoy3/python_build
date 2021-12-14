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
        'CREATE TABLE items(user_id INT, user_name STRING)'
    )
    conn.close()
    print("データベースファイルとテーブルを新規に作成しました。起動中はファイルを操作しないでください。")

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
    return embed

#管理者権限でのみ可能な処理実行後のembed(色がマゼンタ 0xc71585)
def add_embed_supecial(title,descrip):
    embed = discord.Embed( # Embedを定義する
                          title=title + " (管理者権限処理)",# タイトル
                          color=0xc71585, # フレーム色指定(今回はマゼンタ)
                          description=descrip, # Embedの説明文 必要に応じて
                          )
    embed.set_author(name=client.user, # Botのユーザー名
                     icon_url=client.user.avatar_url # Botのアイコンを設定してみる
                     )
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
    return embed


#カラムの追加
def column_add(s):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        "ALTER TABLE items ADD COLUMN %s STRING"
     %s)
    cur.execute(
        'PRAGMA table_info(items)'
    )
    callmsg = ""
    newColumn = cur.fetchall()[-1]
    callmsg = "カラムID:" + str(newColumn[0]) + "\nカラム名" + str(newColumn[1]) + "\nカラムのデータ型" + str(newColumn[2]) + "\n"
    conn.close()
    embed = add_embed_supecial("カラムを追加しました。", callmsg)
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
    embed = add_embed_supecial("終了します。", "起動は再びコンソールから行ってください。")
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

# 起動時に動作する処理
@client.event
async def on_ready():
    # 起動したらターミナルにログイン通知が表示される
    print('ログインしました')

# メッセージ受信時に動作する処理
@client.event
async def on_message(message):
    # メッセージ送信者がBotだった場合は無視する
    if message.author.bot:
        return
    # 「/neko」と発言したら「にゃーん」が返る処理
    if message.content == '/neko':
        await message.channel.send('にゃーん')
    #  /addcolumn A テーブルに「A」というカラムを追加する。
    if message.content.startswith('/addcolumn'):
        try:
            columnName = message.content.split(' ')[1]
        except:
            await message.channel.send("カラム名を入力して実行してください。")
            return
        embed = column_add(columnName)
        await message.channel.send(embed=embed)
    #　/adduser 自身のユーザーIDのレコードを追加する。
    if message.content.startswith('/adduser'):
        user = [message.author.id]
        u_id = await client.fetch_user(user[0])
        user.append(str(u_id))
        embed = user_add(user)
        await message.channel.send(embed=embed)
    # /stopbot ボットを終了する。
    if message.content.startswith('/stopbot'):
        embed = stop_bot()
        await message.channel.send(embed=embed)
        await client.close()
    # /info @を除いたユーザ名 その人の情報を取得する。
    if message.content.startswith('/info'):
        try:
            info = message.content.split(' ')[1]
        except:
            await message.channel.send("ユーザ名を入力して実行してください。")
            return
        if info.startswith('@'):
            info = info.replace('@','')
        embed = user_info(info)
        await message.channel.send(embed=embed)


# Botの起動とDiscordサーバーへの接続
client.run(TOKEN)