import discord
from discord import app_commands

intents = discord.Intents.default()
intents.message_content = True

MY_GUILDS = [discord.Object(id=956435214824009748), discord.Object(id=1011978878278979655)]

#参照 https://github.com/Rapptz/discord.py/blob/master/examples/app_commands/basic.py
class MyClient(discord.Client):
    def __init__(self, *, intents: discord.Intents):
        super().__init__(intents=intents)
        self.tree = app_commands.CommandTree(self) #全てのコマンドを管理するCommandTree型オブジェクトを生成

    async def setup_hook(self):
        for id in MY_GUILDS:
            self.tree.copy_global_to(guild=id)
            await self.tree.sync(guild=id)

client = MyClient(intents=intents)

@client.event
async def on_ready():
    print(f'We have logged in as {client.user}')

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('/hello'):
        await message.channel.send('Hello!')

# This context menu command only works on messages
@client.tree.context_menu(name='Report to Moderators')
async def report_message(interaction: discord.Interaction, message: discord.Message):
    #ephemeral=Trueで送信者にのみ表示する
    await interaction.response.send_message(
        f'Thanks for reporting this message by {message.author.mention} to our moderators.', ephemeral=True
    )

    #レポート送信用のログチャンネルをチャンネルIDから取得する
    log_channel = interaction.guild.get_channel(979555271191977995)

    #ログチャンネルに飛ばすためのembedを作成
    embed = discord.Embed(title='Reported Message')

    #メッセージ内容を取得できていればembedのdescriptionに張り付ける
    if message.content:
        embed.description = message.content 
    
    #embedにレポートされたメッセージ送信者の表示名、アイコン、タイムスタンプをメッセージ送信時の時間を張り付け
    embed.set_author(name=message.author.display_name, icon_url=message.author.display_avatar.url)
    embed.timestamp = message.created_at

    #uiを表示するための骨組み？
    url_view = discord.ui.View()
    #uiのボタンを表示する、表示内容、ボタンのスタイル(discord.ButtonStyleを参照)、ボタンの行き先を指定している。
    url_view.add_item(discord.ui.Button(label='Go to Message', style=discord.ButtonStyle.url, url=message.jump_url))
    #uiの選択メニューを表示
    options = [discord.SelectOption(label='まぐろ', value=1, description='素晴らしい赤身', default=True), discord.SelectOption(label='サーモン', value=2, description='脂身が子供に人気'), discord.SelectOption(label='えんがわ', value=3, description='控え目で万人受け。')]
    url_view.add_item(discord.ui.Select(placeholder='初期値', min_values=1, max_values=1, options=options))

    #ログチャンネルへembedとuiを送信
    await log_channel.send(embed=embed, view=url_view)

    #https://qiita.com/mokutan_hibiki/items/b40217e6f2840257374a

client.run('OTU2NDM1NDE5MDY1NjMwNzQw.G9mvuE.dETxKKxsdN-zNtCKuElcEJJBEq9_-HZpzQyfMc')