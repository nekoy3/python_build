import sys
import os
import re
import codecs

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
textRead = open(srcPath, 'rb')
mainText = textRead.read()
textRead.close()

#「Name」「Objective」「Score」の文字がオブジェクトや名前で使用されていると正常に動作しません。

#不要な部分は削除します。Objectives以降のコードを削除
num = str(mainText.hex()).find('4f626a65637469766573') #sは0x73
searchText = mainText.hex()[:num]
scoreList = searchText.split('00080009')

scoreHex = '53636f7265'
nameHex = '4e616d65'
objectiveHex = '4f626a656374697665'
dataList = []
for i in range(1,len(scoreList)):

    score = scoreList[i].count(scoreHex)
    if score == 0:
        score = 'None'
    elif score == 1:
        score = re.search(scoreHex + r'.{8}', str(scoreList[i])).group().replace(scoreHex,'') #Score+32bitデータを取得してScoreの文字を削除する
    else:
        score = scoreList[i].rfind(scoreHex) + len(scoreHex)
        score = scoreList[i][score:score+8]
    score = int(score, 16)

    try:
        nameStr = re.search(nameHex + r'.{4}' , str(scoreList[i])).group().replace(nameHex,'') #name後の2byteで文字列の長さを表示
    except:
        name = 'None'
    else:
        nameStr = int(nameStr, 16)
        base = scoreList[i].find(nameHex) + len(nameHex) + 4 #4はname文字数を格納する2byte領域分を指す。objectでも同じ
        name = scoreList[i][base:base + nameStr*2] #一文字を4bit*2で表現するため文字数*2ケタを指定する
        name = str(codecs.decode(name, "hex"),'utf-8') #文字列へ変換する。日本語文字列もあるためutf-8を使用

    try:
        objectStr = re.search(objectiveHex + r'.{4}',str(scoreList[i])).group().replace(objectiveHex,'')
    except:
        object = 'None'
    else:
        objectStr = int(objectStr, 16)
        base = scoreList[i].find(objectiveHex) + len(objectiveHex) + 4
        object = scoreList[i][base:base + objectStr*2]
        object = str(codecs.decode(object, "hex"),'utf-8')

    print('No.' + str(i),name,object,'Score:' + str(score))
