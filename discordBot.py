#py -3 -m pip install -U discord.py

import discord
from discord.ext import commands

bot = commands.Bot(command_prefix='>')

@bot.command()
async def ping(ctx):
    await ctx.send('pong')

bot.run('ODg2OTgwOTgwOTY2MDYwMDQy.YT9faQ.mp5kjBS5QiOBzdrmyZXEzqx_BEc')