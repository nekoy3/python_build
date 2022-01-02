import sys
import os

args = sys.argv
try:
    srcPath = args[1].replace('\\','/')
except:
    print("読み込むファイルパスを入力")
    srcPath = input().replace('\\','/')

if os.path.exists(srcPath):
    print("ファイルパスを認識")
else:
    print("ファイルパスが無効です。")
    exit()

#ファイルの行ごとに分割してリストに格納する
file = open(srcPath, 'r', encoding='utf-8').read().split('\n')
for i in range(len(file)):
    list = file[i].split(' ')
    sum = sum(list)
    print(i + 1 + "行目の合計:" + sum)