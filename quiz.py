#入力形式(テキストファイル）　問題文 選択肢1 選択肢2 選択肢3 選択肢4 解説
#ファイルを読み込む→範囲内の行からランダムで行を選ぶ→問題、選択肢、解説を選択→処理
#選択肢の末尾に*を入れることで、それが答えと判定する。
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
    print("続けるには何かキーを入力してください・・・")
    tmp = input()
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
    what = ''
    ansCnt = 0
    for i in range(random.randint(0,20)):
        line[(i%4)+1],line[(i%3)+1] = line[(i%3)+1],line[(i%4)+1]
    for i in range(4):
        try:
            line[i+1].index('*')
        except ValueError:
            line[i+1] = line[i+1]
        else:
            line[i+1] = line[i+1].replace('*','')
            ansCnt = i + 1
        what += ' ' + str(i+1) + ',' + line[i+1]
    if ansCnt == 0:
        print('問題「' + line[0] +'」' + 'には答えが設定されていません。')
        continue
    
    print("Question : " + line[0] + '\n' + what)
    answer = ''
    while answer == '':
        print("回答 ：",end=" ")
        answer = input()
    if int(answer) == ansCnt:
        try:
            line[5]
        except:
            print('正解！答えは ' + line[ansCnt] + ' です。')
        else:
            print('正解！答えは ' + line[ansCnt] + ' です。　解説：' + line[5])
        qCnt += 1
        qSuc += 1
    else:
        try:
            line[5]
        except:
            print('不正解。答えは ' + line[ansCnt] + ' です。')
        else:
            print('不正解。答えは ' + line[ansCnt] + ' です。　解説：' + line[5])
        qCnt += 1

    print("\n続けるにはEnterを押してください・・・\n終了する場合はendを入力してください・・・")
    test = input()
    if test == "end":
        print("問題回答の結果　回答数:" + str(qCnt) + " 正答数:" + str(qSuc) + " 正答率:" + str(round(float((qSuc/qCnt)*100),1)) + "%")
        print("続けるには何かキーを入力してください・・・")
        tmp = input()
        break