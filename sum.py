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
    l = file[i].split(' ')
    for j in range(len(l)):
        try:
            l[j] = "delete" if l[j].startswith(';') else int(l[j])
        except:
            print("数値以外が含まれています。")
            exit()
    l.remove("delete")
    print(str(l))
    s = sum(l)
    print(str(i + 1) + "行目の合計:" + str(s))