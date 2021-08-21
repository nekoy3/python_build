import re
text = 'scoreboard objectives add test987j9uq34 dummy displayname'
split = text.split(" ")
split2 = text.split(None)
rsplit = text.rsplit(None,3)
scoreboard = text.rsplit(None,3)[1]
print(split,split2,rsplit,scoreboard)

try:
    test = re.search('scssss',text).group()
except AttributeError:
    test = 'error!!'
print(test)