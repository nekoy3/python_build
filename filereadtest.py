import sys
import os
import re

args = sys.argv
srcPath = args[1]
cnt = 0
srcPath = srcPath.replace('/','\\')
nameSpace = re.search(r'\\.+\\functions',srcPath).group().replace('/','').replace('\\functions','')
nameSpace = nameSpace[nameSpace.rfind('\\')+1:]

print(nameSpace)