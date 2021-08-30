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


num = str(mainText.hex()).find('4f626a65637469766573')
searchText = mainText.hex()[:num]
scoreList = searchText.split('00080009')

for i in range(1,len(scoreList)):
    try:
        score = re.search('53636f7265' + r'.{8}', str(scoreList[i])).group().replace('53636f7265','') #Score+32bitデータを取得してScoreの文字を削除する
    except:
        score = 'None'
    else:
        print(score)
        score = int(score, 16)

    nameHex = '4e616d65' #Name
    try:
        nameStr = re.search(nameHex + r'.{4}' , str(scoreList[i])).group().replace(nameHex,'') #name後の2byteで文字列の長さを表示
    except:
        name = 'None'
    else:
        #print('nameStr = ' + nameStr)
        nameStr = int(nameStr, 16)
        base = scoreList[i].find(nameHex) + len(nameHex) + 4
        name = scoreList[i][base:base + nameStr*2]
        name = str(codecs.decode(name, "hex"),'utf-8')

    objectiveHex = '4f626a656374697665'
    try:
        objectStr = re.search(objectiveHex + r'.{4}',str(scoreList[i])).group().replace(objectiveHex,'')
    except:
        object = 'None'
    else:
        #print('objectStr = ' + objectStr)
        objectStr = int(objectStr, 16)
        base = scoreList[i].find(objectiveHex) + len(objectiveHex) + 4
        object = scoreList[i][base:base + objectStr*2]
        object = str(codecs.decode(object, "hex"),'utf-8')

    print('No.' + str(i),name,object,'Score:' + str(score))
    #if score >= 100000:
    #    print('No.' + str(i),scoreList[i])

    cvtTest = ''
    try:
        cvtTest += str(codecs.decode(scoreList[i], "hex"),'utf-8')
    except:
        cvtTest += scoreList[i]
    #print('#####' + cvtTest + '\n' + scoreList[i])
