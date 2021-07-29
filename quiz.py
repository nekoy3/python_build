#入力形式(テキストファイル）　問題文 選択肢1/選択肢2/選択肢3/選択肢4 答えの選択肢の番号 解説
#ファイルを読み込む→範囲内の行からランダムで行を選ぶ→問題、選択肢、解説を選択→処理
import sys
import os
import random

args = sys.argv
try:
    srcPath = args[1]
except:
    print("問題ファイルのパスを入力")
    srcPath = input()
# ファイルパスが存在するかを検知
if os.path.exists(srcPath):
    print("ファイルパスを認識")
else:
    print("ファイルパスが無効です。")
    exit()
textRead = open(srcPath, "r", encoding="utf_8")
beforeText = textRead.readlines()
textRead.close()
for i in range(len(beforeText)):
    beforeText[i] = beforeText[i].replace('\n','')
qSuc = qCnt = 0

while True:
    useLine = random.randint(0, len(beforeText)-1)
    line = beforeText[useLine].rstrip().split(' ')
    what = ' ' + line[1].replace('/',' ')
    for i in range(1,5):
        after = '　' + str(i) + ','
        what = what.replace(' ',after,1)
    print("Question : " + line[0] + '\n' + what)
    print("回答 ：",end=" ")
    answer = input()
    if answer == line[2]:
        print('正解！答えは ' + line[2] + ' です。　解説：' + line[3])
        qCnt += 1
        qSuc += 1
    else:
        print('不正解！　解説：' + line[3])
        qCnt += 1

    print("\n続けるにはEnterを押してください・・・\n終了する場合はその他のキーを入力してください・・・")
    test = input()
    if test != "":
        print("問題回答の結果　回答数:" + str(qCnt) + " 正答数:" + str(qSuc) + " 正答率:" + str(round(float((qSuc/qCnt)*100),1)) + "%")
        break