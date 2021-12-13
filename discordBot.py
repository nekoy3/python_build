#py -3 -m pip install -U discord.py
# インストールした discord.py を読み込む
import discord
import sqlite3
import os

dbname = "datalist.db"
if os.path.exists(dbname):
    print("データベースファイルを認識しました。起動中はファイルを操作しないでください。")
else:
    conn = sqlite3.connect(dbname)
    # SQLiteを操作するためのカーソルを作成
    cur = conn.cursor()

    # テーブルの作成
    cur.execute(
        'CREATE TABLE items(id INTEGER PRIMARY KEY AUTOINCREMENT,user_id STRING, name STRING)'
    )
    conn.close()
    print("データベースファイルとテーブルを新規に作成しました。起動中はファイルを操作しないでください。")

#カラムの追加
def column_add(s,msg):
    conn = sqlite3.connect(dbname)
    cur = conn.cursor()
    cur.execute(
        "ALTER TABLE items ADD COLUMN %s STRING"
     %s)
    cur.execute(
        'PRAGMA table_info(items)'
    )
    return cur.fetchall()

#ユーザー情報の追加

# 自分のBotのアクセストークンに置き換えてください
TOKEN = 'token' #pushする前にトークンを削除

# 接続に必要なオブジェクトを生成
client = discord.Client()

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
        columnName = message.content.split(' ')[1]
        text = column_add(columnName,message)
        await message.channel.send(text)

# Botの起動とDiscordサーバーへの接続
client.run(TOKEN)