import sys
import os
import datetime
import re
import random
import string

#第一引数：変換する.mcfunctionのパス　第二引数：出力するファイル名　第三引数：datapackの変換するfunctionが入っているネームスペース名

cmdExeList = list()
convertMesseage = list()
#!dstPath出力パス,srcPath入力パス,srcDir入力ディレクトリ
suffix = '.mcfunction'
defaultdstPath = 'converted'

args = sys.argv
try:
    srcPath = args[1].replace('\\','/')
except:
    print("変換ファイルパスを入力")
    srcPath = input().replace('\\','/')

# ファイルパスが存在するかを検知
if os.path.exists(srcPath):
    print("ファイルパスを認識")
else:
    print("ファイルパスが無効です。")
    exit()

try:
    dstPath = args[2]
except:
    print("出力のファイル名を入力(.mcfunction無しで)")
    dstPath = input()

dstPath += suffix
if dstPath.count('.mcfunction') == 2:
    dstPath = dstPath.replace('.mcfunction{2}', '.mcfunction')

try:
    nameSpace = args[3]
except:
    print("datapackのネームスペースを検知します。")
    srcPath = srcPath.replace('/','\\')
    try:
        nameSpace = re.search(r'\\.+\\functions',srcPath)[0].replace('/','').replace('\\functions','')
    except:
        nameSpace = 'namearea'
    else:
        nameSpace = nameSpace[nameSpace.rfind('\\')+1:]
nameSpacePos = nameSpace.rfind('/')
print('nameSpace = ' + nameSpace[nameSpacePos+1:])

# ファイルのディレクトリ
srcDir = os.path.split(srcPath)[0]
dstPath = srcDir + "/" + dstPath
print("出力ファイルパス " + dstPath)
TestFind = os.path.exists(dstPath)
if TestFind:
    while True:
        print("既存ファイルを削除しますか？(Y/n)")
        cfmDelete = input()
        if cfmDelete.lower() == 'n':
            print("ファイル名を変更するか、移動させてから実行してください。")
            exit()
        elif cfmDelete.lower() == 'y':
            print("ファイルを削除し変換します。")
            os.remove(dstPath)
            break
else:
    print("新規にファイルを作成します。\n" + dstPath)


# タイムスタンプ取得用
dt_now = datetime.datetime.now()
dateText = dt_now.strftime("%Y/%m/%d %H:%M:%S")

inText = open(dstPath, 'a', encoding='UTF-8')
inText.write("#NEKOYAMA Converter " + str(dateText) + " converted\n")
inText.close

ALL_COMMAND = list()
ALL_COMMAND = ['clear ','clone ','difficulty ','effect ','enchant ','event ','xp ','experience ','fill ','fog ','function ','gamemode ','gamerule ','gametest ','getchunkdata ','getlocalplayername ','getspawnpoint ','give ','globalpause ','immutableworld ','kick ','kill ','list ','listd ','locate ','locatebiome ','me ','mobevent ','msg ','w ','music ','particle ','permission ','playanimation ','playsound ','querytarget ','reload ','replaceitem ','ride ','save ','say ','schedule ','scoreboard ','setblock ','setmaxplayers ','setworldspawn ','spawnpoint ','spreadplayers ','stop ','stopsound ','structure ','summon ','tag ','tp ','teleport ','tellraw ','tell ','testfor ','testforblock ','testforblocks ','tickingarea ','time ','title ','titleraw ','toggledownfall ','wb ','weather ','whitelist ','worldbuilder ','wsserver']
ALL_COMMAND_CNT = len(ALL_COMMAND)

##################################################################################################################
def argument_convert(lineArg):
    argChecker = re.search(r'\@.\[',lineArg)
    if argChecker == None:
        print("[引数変換]引数付きセレクタを判定出来ませんでした。無変換で続行します。")
        print("CMD:" + lineArg)
        return lineArg
    argCnt = lineArg.count(r'\@.\[')
    #セレクタの重複は分割してこの関数を実行してセレクタが一個の状態でのみ動作するものとする
    if argCnt >= 2:
        print("[引数変換]セレクタを二個以上判定しました。 Selector:" + str(argCnt))
        print("errorCMD:" + lineArg)
        exit()
        
    #lineArg = "execute @e[type=armor_stand]"
    getArg = re.search(r'\@.\[(.+)\]',lineArg).group(0)[:-1]
    lineArg = lineArg.replace(getArg,'SELECTOR_')
    print("IN:" + str(getArg))
    argListOld = list()
    argList = list()
    argListTemp = list()
    argListOld.clear()
    argList.clear()
    argListTemp.clear()
    selEntity = getArg[0:2]
    #selEntityはセレクタのタイプを保存し、後から構成するときに使用

    #引数を抜き取ってargListOldリストに追加していく
    #getArg<@e[type=!player,r=3 <--最後の,の文字数目を取得(posArg)し
    #posArg+1文字目から最後までの文字列を抜き取る
    argFlag = True
    posArg = getArg.rfind(',')
    #scores引数内コロンを区別するため、あらかじめargListOldに追加しDELETEDとして続行する

    if posArg == -1:
        argListOld.append(getArg[3:])
        argFlag = False
        print("[convArg]引数が一つのため、抜き取りました。 --> " + str(argListOld))
        
    while argFlag:
        #最初から引数がないとposArg=-1
        posArg = getArg.rfind(',')
        ArgCnt = getArg.count(',')
        argListOld.append(getArg[posArg+1:])
        getArg = getArg[:posArg]
        #print(getArg)
        if ArgCnt <= 1:
            endArg = getArg.rfind('[')
            #print(str(getArg) + " " + str(endArg))
            argListOld.append(getArg[endArg+1:])
            print("[convArg]複数の引数を抜き取りました。 --> " + str(argListOld))
            break
    
    argCnt = len(argListOld)

    #引数を変換するための一部特殊構成引数構築のためのフラグ
    distanceBuild = disMin = disMax = False
    levelBuild = levMin = levMax = False
    xrotBuild = xrotMin = xrotMax = False
    yrotBuild = yrotMin = yrotMax = False
    print("Oldの引数は" + str(len(argListOld)) + "個です。")
    try:
        argListTemp.append(re.search(r'scores=\{.\,*.*\}',getArg).group(0))
    except:
        print("[convArg]scores引数はありません。")
    else:
        print("[convArg]scores引数を取得しました。 --> " + argListTemp[0])
        getArg = re.sub(argListTemp[0],'DELETED',getArg)
    for i in range(0,len(argListOld)):
        selTemp = argListOld[i]
        print("selTemp --> " + selTemp)
        if selTemp.startswith(("type=","name=","x=","y=","z=","dx=","dy=","dz=","scores=","tag=")):
            print("[convArg]変換不要引数です --> " + selTemp)
            argListTemp.append(selTemp)
        elif selTemp.startswith("r="):
            distanceBuild = True
            disMax = selTemp[2:]
        elif selTemp.startswith("rm="):
            distanceBuild = True
            disMin = selTemp[3:]
        elif selTemp.startswith("l="):
            levelBuild = True
            levMax = selTemp[2:]
        elif selTemp.startswith("lm="):
            levelBuild = True
            levMin = selTemp[2:]
        elif selTemp.startswith("rx="):
            xrotBuild = True
            xrotMax = selTemp[3:]
        elif selTemp.startswith("rxm="):
            xrotBuild = True
            xrotMin = selTemp[4:]
        elif selTemp.startswith("ry="):
            yrotBuild = True
            yrotMax = selTemp[3:]
        elif selTemp.startswith("rym="):
            yrotBuild = True
            yrotMin = selTemp[4:]
        elif selTemp.startswith("m="):
            print("[convArg]gamemode引数に変換します。 --> " + selTemp)
            selTemp = str(re.sub('m=','gamemode=',selTemp))
            if selTemp.endswith("a"):
                selTemp += "dventure"
            elif selTemp.endswith("c"):
                selTemp += "reative"
            elif selTemp.endswith("s"):
                selTemp += "urvival"
            argListTemp.append(selTemp)
        elif selTemp.startswith("c="):
            print("[convArg]limit引数に変換します。 --> " + selTemp)
            argListTemp.append(str(re.sub('c=','limit=',selTemp)))
        elif selTemp.startswith("DELETED"):
            selTemp = ""
        else:
            print("[convArg]例外エラー : " + selTemp)
            argListTemp.append(selTemp)

    if disMin == False:
        disMin = ""
    if disMax == False:
        disMax = ""
    if levMin == False:
        levMin = ""
    if levMax == False:
        levMax = ""
    if xrotMin == False:
        xrotMin = ""
    if xrotMax == False:
        xrotMax = ""
    if yrotMin == False:
        yrotMin = ""
    if yrotMax == False:
        yrotMax = ""

    if distanceBuild:
        print("[convArg]distance引数を生成します。 ")
        disArg = "distance=" + disMin + ".." + disMax
        argListTemp.append(disArg)
    if levelBuild:
        print("[convArg]level引数を生成します。 ")
        levArg = "level" + levMin + ".." + levMax
        argListTemp.append(levArg)
    if xrotBuild:
        print("[convArg]x_rotation引数を生成します。 ")
        xrotArg = "x_rotation=" + xrotMin + ".." + xrotMax
        argListTemp.append(xrotArg)
    if yrotBuild:
        print("[convArg]y_rotation引数を生成します。 ")
        yrotArg = "y_rotation=" + yrotMin + ".." + yrotMax
        argListTemp.append(yrotArg)

    print("[convArg]現在の引数の数 --> " + str(len(argListTemp)) + "\n" + str(argListTemp))
    
    #めんどくさいので代入
    argList = argListTemp

    argCnt = len(argList)
    print("最終的な引数の数 <-- " + str(argCnt) + "\nArglist -->" + str(argList))
    #outLineArg = "@" + selEntity + "["
    outLineArg = selEntity + "["
    while argCnt >= 2:
        outLineArg = outLineArg + argList[argCnt-1] + ","
        argCnt -= 1
    outLineArg = outLineArg + argList[argCnt-1]
    lineArg = lineArg.replace('SELECTOR_',outLineArg)
    print("引数変換後出力 = " + lineArg)
    return lineArg
#################################################################################################################
def Normal_convert(cmdLine,selectorList,convType):
    print("[nc]通常コマンドの変換を実行 --> " + cmdLine)
    selTempList = list()
    selTempList.clear
    #通常コマンドはこの関数で処理する。
    selectorList = list(reversed(selectorList))
    if cmdLine.count('SELECTOR_') >= 1:
        for i in range(0,cmdLine.count('SELECTOR_')):
            selTempList.append(selectorList[i])
        selectorList = selTempList
    print("[nc]cmdLine = " + cmdLine + " / selectorList = " + str(selectorList))

    if cmdLine.startswith("xp") or cmdLine.startswith("experience"):
        print("[nc]xp/experienceコマンドを変換します。")
        ncResult = 'xp add ' + selectorList[0]
        ncResult += re.search(r'\s.?[0-9]+',cmdLine).group(0)
        if cmdLine.count('l ') == 1:
            cmdLine.replace('l ',' ')
            ncResult += ' levels '
        else:
            ncResult += ' points '
    elif cmdLine.startswith("tp") or cmdLine.startswith("teleport"):
        print("[nc]tp/teleportコマンドを検証します。")
        if cmdLine.count('facing') == 1:
            ncResult = cmdLine.replace('facing ','facing entity ')
            print("[nc]facingにentity属性を追加しました。")
        else:
            ncResult = cmdLine
            print("[nc]tp/teleportコマンドに変換は不要です。")
    elif cmdLine.startswith("scoreboard"):
        cmdLine = re.sub(r'dummy\s.+','dummy',cmdLine)
        print("[nc]scoreboardコマンドを検証します。")
        try:
            tempPM = re.search(r'add\s.+\s.+-',cmdLine).group()
        except:
            None
        else:
            print('負数加減算を訂正します。')
            cmdLine = cmdLine.replace('add','remove').replace('-','')
        try:
            tempPM = re.search(r'remove\s.+\s.+-',cmdLine).group()
        except:
            None
        else:
            print('負数加減算を訂正します。')
            cmdLine = cmdLine.replace('remove','add').replace('-','')
        if cmdLine.count('random') >= 1:
            print("[nc]scoreboardコマンドで乱数を生成することが出来ません。このファイルと同じ階層にフォルダを作成し乱数を生成する関数を新たに作成します。")
            randomString = 'rnumber_'
            randomString += ''.join([random.choice(string.digits + string.ascii_lowercase) for i in range(8)])
            try:
                os.mkdir(srcDir + '/neconvfunction_/')
            except FileExistsError:
                print("既存のneconvfunctionフォルダを使用します。")

            print("[nc]ネームスペースを確認")
            print(cmdLine)
            temp = cmdLine[cmdLine.find('random'):]
            randomRange = re.findall(r"-?\d+", temp)
            getScoreboardName = cmdLine.replace('scoreboard players random SELECTOR_ ','').replace(' ','').replace(randomRange[0] + randomRange[1],'')
            randomRange = [int(x) for x in randomRange]
            try:
                srcDir.count(nameSpace + '/neconvfunction_')
            except:
                cmdFunctionString = srcDir[srcDir.find(nameSpace)+len(nameSpace):].replace('\\','/').replace('/functions/','')
            else:
                cmdFunctionString = ''
                
            functionMake = list()
            functionMake.clear
            functionMake.append('scoreboard objectives add random dummy\n')
            [functionMake.append('summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.' + randomString + '"]}\n') for i in range(randomRange[0],randomRange[1]+1)]
            functionMake.append('scoreboard players set @e[tag=randomA.' + randomString + ',dy=6] random 0\n')
            [functionMake.append('scoreboard players set @e[tag=randomA.' + randomString + ',dy=6,scores={random=0},limit=1,sort=random] random ' + str(i) + '\n') for i in range(randomRange[0],randomRange[1]+1)]
            functionMake.append('scoreboard players operation __' + randomString + '__ random = @e[tag=randomA.' + randomString + ',dy=6,sort=random,limit=1] random\n')
            functionMake.append('kill @e[tag=randomA.' + randomString + ']\n')
            functionMake.append('scoreboard players operation ' + str(selectorList[0]) + ' ' + getScoreboardName + ' = __' + randomString + '__ random\n')
            functionMake.append('scoreboard players reset ' + '__' + randomString + '__ random')
            functionWritePath = srcDir + '/neconvfunction_/' + randomString + '.mcfunction'
            functionTextWrite = open(functionWritePath, 'a', encoding='UTF-8')
            functionTextWrite.writelines(functionMake)
            functionTextWrite.close
                #関数ファイル生成の仕組みについてはこちらに準拠
                #https://nekoyama030330.seesaa.net/article/476684195.html
                #https://nekoyama030330.seesaa.net/article/475665051.html
            cmdLine = 'function ' + nameSpace + ':' + cmdFunctionString + 'neconvfunction_/' + randomString
        ncResult = cmdLine
    elif cmdLine.startswith("function"):
        print("[nc]functionコマンドにネームエリア記述を追加します。")
        ncResult = cmdLine.replace('function ','function ' + nameSpace + ':')
    elif cmdLine.startswith("tellraw") or cmdLine.startswith("titleraw"):
        print("[nc]tellraw/titlerawコマンドを変換します。 --> " + cmdLine)
        cmdLine = cmdLine.replace('titleraw','title')
        jsonString = cmdLine[cmdLine.find('{'):]
        cmdLine = cmdLine.replace(jsonString,'')
        jsonString = jsonString.replace('{"rawtext":[','').replace('{"rawtext": [','').replace(']}','')
        if jsonString.count('"text"') >= 2:
            jsonString = '["",' + jsonString + ']'
            jsonString = jsonString.replace(',"text"','TMP_0',1).replace(',"text"','},{"text"').replace('TMP_0',',"text"',)
        else:
            jsonString = jsonString.replace('},{',',')
        rawColorList = []
        colorPos = 0
        colorList = [['0','"color":"black"'],['1','"color":"dark_blue"'],['2','color":"dark_green"'],['3','color":"dark_aqua"'],['4','color":"dark_red"'],['5','color":"dark_purple"'],['6','color":"gold"'],['7','"color":"gray"'],['8','"color":"dark_gray"'],['9','"color":"blue"'],['a','"color":"green"'],['b','"color":"aqua"'],['c','"color":"red"'],['d','"color":"light_purple"'],['e','"color":"yellow"'],['f','"color":"white"'],['k','"obfuscated":true'],['l','"bold":true'],['m','"strikethrough":true'],['n','"underlined":true'],['o','"italic":true'],['r','']]
        for i in range(jsonString.count('§')):
            #text内に存在するセクションの数
            colorPos = jsonString.rfind('§')
            #colorTypeを格納し、色指定部分を削除
            colorType = jsonString[colorPos+1]
            rawColorList.append(colorType)
            jsonString = jsonString[::-1].replace(colorType + '§','__ROLOC',1)[::-1]
            print('colorType ' + colorType + ' colorPos ' + str(colorPos))
        print(str(rawColorList))

        for i in range(len(rawColorList)):
            for j in range(len(colorList)):
                if rawColorList[i] == colorList[j][0]:
                    print('jsonString --> ' + jsonString)
                    textInColorPos = jsonString.find('COLOR_')
                    jsonTemp = jsonString[textInColorPos:jsonString.find('}',textInColorPos)+1].replace('}',',' + colorList[j][1] + '}',1)
                    print(jsonString.find('}',textInColorPos))
                    jsonString = jsonString.replace(jsonString[textInColorPos:jsonString.find('}',textInColorPos)+1],jsonTemp).replace('COLOR__','',1).replace(',}','}')

        cmdLine += jsonString
        ncResult = cmdLine
    elif cmdLine.startswith("spreadplayers"):
        print("[nc]spreadplayersコマンドを変換します。 --> " + cmdLine)
        cmdLine = re.sub('SELECTOR_','false SELECTOR_',cmdLine)
        ncResult = cmdLine
    else:
        print("[nc]形式の変換は必要ありません。")
        ncResult = cmdLine

    selectorList = list(reversed(selectorList))
    for i in range(0,ncResult.count('SELECTOR_')):
        print("[nc]List import --> " + selectorList[i])
        ncResult = ncResult.replace('SELECTOR_',selectorList[i],1)
        print("[nc]セレクターを置換しました。 --> " + ncResult)
    #######ここで何故かセレクターを置換してくれないので明日やる
    print("ncResult --> " + ncResult)
    return ncResult
#################################################################################################################
def type_convert(cmdEnume,convType,detList):
    TCmode = False
    if convType <= 0:
        result = cmdEnume
        return result,TCmode
    #tcList配列をexecuteResultCmd変数に置き換えた executeコマンドの配列はseparateExecute配列
    separateExecute = list()
    separateExecute.clear()
    getSelList = list()
    getSelList.clear()
    tempSeparate = list()
    tempSeparate.clear()

    #バラけてコマンドを分解するがcmdEnumeに返しセレクタはgetSelListに格納される
    tcSelectorCnt = tcSelectorCnt_afterSeparate = cmdEnume.count('@')
    while tcSelectorCnt_afterSeparate >= 2:
        tempSeparate.append(cmdEnume[cmdEnume.rfind('@'):])
        cmdEnume = cmdEnume[:cmdEnume.rfind('@')]
        tcSelectorCnt_afterSeparate = cmdEnume.count('@')
        if tcSelectorCnt_afterSeparate == 1:
            tempSeparate.append(cmdEnume)
    tempSeparate = list(reversed(tempSeparate))
    if tcSelectorCnt < 2:
        tempSeparate.append(cmdEnume)
    cmdEnume = ""
    print("tempSeparate = " + str(tempSeparate))
    for i in range(0,tcSelectorCnt):
        try:
            getSelList.append(re.search(r'\@.\[(.+)\]',tempSeparate[i]).group(0))
        except:
            try:
                getSelList.append(re.search(r'\@.',tempSeparate[i]).group(0))
            except:
                print("セレクタの抽出をスルーしました。")
                break
            else:
                tempSeparate[i] = tempSeparate[i].replace(getSelList[i],'SELECTOR_')
        else:
            tempSeparate[i] = tempSeparate[i].replace(getSelList[i],'SELECTOR_')
        cmdEnume += tempSeparate[i]
    print("type_convert / getSelList = " + str(getSelList) + " tcSelectorCnt = " + str(tcSelectorCnt) + "\ncmdEnume = " + str(cmdEnume))
    #セレクターが存在しないコマンドの対処
    if cmdEnume == '':
        cmdEnume = tempSeparate[0]

    #convType=1はexecuteコマンドに対応
    if convType == 1:
        print("[type_convert]execute 通常コマンドを分離させます")
        #ALL_COMMANDと繰り返し比較し、分割したらtcListへ
        for i in range(ALL_COMMAND_CNT,0,-1):
            separatePos = cmdEnume.rfind(ALL_COMMAND[i-1])
            if separatePos != -1:
                print("[type_convert]分離コマンド --> " + ALL_COMMAND[i-1] + "/ separatePos = " + str(separatePos))
                break
            elif i == 1:
                TCmode= False
                convertMesseage.append('NoFoundMinecraftCommandFromExecute / line:' + str(line) + ' ' + str(cmdEnume))
                result = '#NoFoundMinecraftCommandFromExecute'
                return result,TCmode
        executeResultCmd = cmdEnume[separatePos:]
        cmdEnume = cmdEnume[:separatePos-1]
        #分離させた通常コマンドをListに入れてその分を削除
        print("[type_convert]通常コマンド分離後 --> " + str(executeResultCmd))
        enumeExeCnt = cmdEnume.count('execute')
        while enumeExeCnt >= 2:
            separatePos = cmdEnume.rfind('execute')
            print("[type_convert]execute抜き取り --> " + cmdEnume[separatePos:])
            separateExecute.append(cmdEnume[separatePos:])
            cmdEnume = cmdEnume[:separatePos-1]
            enumeExeCnt -= 1
        separateExecute.append(cmdEnume)

        #execute以外も、SELECTOR_代入は最後実行する。
        result = "execute "
        for i in range(0,len(separateExecute)):
            result += "as " + getSelList[i] + " at @s "
            for j in range(1,len(detList),2): #detectのやつを追加する
                if i == detList[j]-1:
                    print('[detect/type]' + str(detList[j])) #typeにはN個目のブロック指定を指す。偶数個目[j]に代入。detect部分は[j-1]
                    tmp = 'if block ' + detList[j-1].replace('detect ','')
                    tmp = tmp[:tmp.rfind(' ')]
                    result += tmp + ' '
        #executeResultCmd = executeResultCmd.replace('SELECTOR_',getSelList[len(getSelList)-1])
        #convType == 1なら、SELECTOR_の数を検知して後ろからn番目を代入することにする
        print("[type_convert]executeResultCmdを変換します。")
        executeResultCmd = Normal_convert(executeResultCmd,getSelList,convType)
        result += "run " + executeResultCmd
    elif convType >= 2:
        print("[type_convert]cmdEnumeを変換します。")
        result = Normal_convert(cmdEnume,getSelList,convType)
    else:
        print("[type_convert]変換は必要ありません。")
    print("type_convert / result = " + result)
    return result,TCmode
##################################################################################################################
def list_in_execute_and_other_command(cmdLineWrite,exePos,TCmode,convType):
    print("[other]通常コマンドを分離させます。")
    #ALL_COMMANDと繰り返し比較し、分割したらcmdExeListへ
    for i in range(ALL_COMMAND_CNT,0,-1):
        exePos = cmdLineWrite.rfind(ALL_COMMAND[i-1])
        if exePos != -1:
            print("[other]分離コマンド --> " + ALL_COMMAND[i-1] + "/ exePos = " + str(exePos))
            break
        elif i == 1:
            TCmode= False
            convertMesseage.append('NoFoundMinecraftCommandFromExecute / line:' + str(line) + ' ' + str(cmdLineWrite))
            cmdLineWrite = '#NoFoundMinecraftCommandFromExecute'
            return cmdLineWrite,TCmode
    cmdExeList.clear()
    cmdExeList.append(cmdLineWrite[exePos:])
    cmdLineWrite = cmdLineWrite[:exePos-1]
    #分離させた通常コマンドをListに入れてその分を削除
    print("[other]通常コマンド分離後 --> " + str(cmdExeList))
    
    exeCnt = cmdLineWrite.count('execute')
    while exeCnt >= 2: #executeが二回以上使用されている場合、executeコマンドで区切る
        exePos = cmdLineWrite.rfind('execute')
        print("[other]execute重複抜き取り,exeCnt --> " + cmdLineWrite[exePos:] + " " + str(exeCnt))
        cmdExeList.append(cmdLineWrite[exePos:])
        cmdLineWrite = cmdLineWrite[:exePos-1]
        exeCnt -= 1
    cmdExeList.append(cmdLineWrite)
    print("[other]分離コマンドリスト --> " + str(cmdLineWrite))

    #detectの場合はここで判別し処理
    detectList = []
    for i in range(len(cmdExeList)):
        if cmdExeList[i].count('detect'):
            detectPos = cmdExeList[i].find('detect')
            detectList.append(cmdExeList[i][detectPos:])
            print('[detect]detectを検知しました。 --> ' + cmdExeList[i][detectPos:])
            detectList.append(len(cmdExeList)-i) #i個目のas () at @s の次にif blockをぶち込むかを配列偶数個目に代入しておく
            print('detectList --> ' + str(detectList))
            cmdExeList[i] = cmdExeList[i][:detectPos-1]

    cmdLineWrite = ""
    for i in range(len(cmdExeList),0,-1):
        cmdLineWrite += argument_convert(cmdExeList[i-1]) #分割した分を引数変換しtype_convertに流す
        if i >= 1:
            cmdLineWrite += " "

    print("[other]通常コマンドを分離させて、変換しました。 --> " + str(cmdLineWrite))
    
    cmdLineWrite,TCmode = type_convert(cmdLineWrite,convType,detectList) #ed
    TCmode= False

    return cmdLineWrite,TCmode
##################################################################################################################
def command_text_convert(cmdLine):
    multiCmd = False
    typeConvert = True
    #startswithは標準ライブラリのメソッド
    if cmdLine.startswith("#"):
        print("コメント行です。")
        convType = 0
    elif cmdLine.startswith("\n"):
        print("空白行です。")
        convType = 0
    elif cmdLine.startswith("execute"):
        print("executeコマンドです。")
        convType = 1
    elif cmdLine.startswith("experience") or cmdLine.startswith("xp"):
        print("xpコマンドもしくはexperienceコマンドです。")
        convType = 2
    elif cmdLine.startswith("tp") or cmdLine.startswith("teleport"):
        print("tpコマンドもしくはteleportコマンドです。")
        convType = 3
    elif cmdLine.startswith("scoreboard"):
        print("scoreboardコマンドです。")
        convType = 4
    elif cmdLine.startswith("spreadplayers"):
        print("spreadplayersコマンドです。")
        convType = 5
    elif cmdLine.startswith("function"):
        print("functionコマンドです。")
        convType = 6
    elif cmdLine.startswith("tellraw"):
        print("tellrawコマンドです。")
        convType = 7
    elif cmdLine.startswith("titleraw"):
        print("titlerawコマンドです。")
        convType = 7
    else:
        print("コマンド構文自体の変換は必要ありません。")
        for i in range(ALL_COMMAND_CNT,0,-1):
            separatePos = cmdLine.rfind(ALL_COMMAND[i-1])
            if separatePos != -1:
                print("コマンドタイプ --> " + ALL_COMMAND[i-1] + "/ separatePos = " + str(separatePos))
                break
            elif i == 1 and cmdLine != ' ':
                convertMesseage.append('NoFoundMinecraftCommand / line:' + str(line) + ' ' + str(cmdLine))
                cmdLine = '#NoFoundMinecraftCommand'
        convType = 0
    print("command_text_convert <-- " + cmdLine)
    if cmdLine.startswith("#"):
        cntSelector = 0
    else:
        cntSelector = cmdLine.count('@')
        print("cntSelector = " + str(cntSelector))

    #セレクタの数に応じて処理分岐
    if cntSelector == 1:
        print("セレクタを検知しました。")
        cmdLine = argument_convert(cmdLine)
    elif cntSelector >= 2:
        print("複数のセレクタを検知しました。")
        #executeのeの部分の文字数目が入る。
        try:
            exePos = cmdLine.rfind('execute')
        except:
            print("tpコマンドか、scoreboard players operationによるセレクタ複数指定の可能性があります。")
        print("ループ前executeの位置:" + str(exePos) + "\n" + cmdLine)
        #複数のセレクタがある→分解しcmdExeTestに入る。
        exeConvMulti = True
        if exePos == 0:
            cmdLine,typeConvert = list_in_execute_and_other_command(cmdLine,exePos,typeConvert,convType)
            exeConvMulti = False
            print("executeコマンドを検知しませんでした。")
        if exePos >= 1 and exeConvMulti:
            cmdLine,typeConvert = list_in_execute_and_other_command(cmdLine,exePos,typeConvert,convType)
            print("executeコマンドを1個以上検知しました。")
            multiCmd = True

        #list_in_execute_and_other_command が引数変換、execute分解まで実行する
        multiCmd = True

    if convType != 0 and re.search('\@', cmdLine) and multiCmd == None:
        if re.search(r'\@.\[', cmdLine):
            print("このコマンドは引数付きセレクタがあります。")
            cmdLine = argument_convert(cmdLine)
        else:
            print("このコマンドはセレクタがありますが変換は不要です。")
    emptyList = []
    cmdLine = cmdLine.replace('  ',' ')

    if typeConvert:
        convResult,typeConvert = type_convert(cmdLine,convType,emptyList)
    else:
        convResult = cmdLine

    return convResult
##################################################################################################################

#!変換の流れ
textRead = open(srcPath, "r", encoding="utf_8")
beforeText = textRead.readlines()
textRead.close()

cnt = len(beforeText)
print("変換テキストを読み込みました。")
for i in range(0,cnt):
    beforeText[i] = re.sub('\n','',beforeText[i])
    beforeText[i] = re.sub('\ufeff','',beforeText[i])
    if beforeText[i] == '':
        beforeText[i] = ' '

for line in range(0,cnt):
    lineText = re.sub('\n','',beforeText[line])
    print("変換処理を実行します <-- " + lineText)
    if lineText != '':
        beforeText[line] = str(command_text_convert(lineText) + "\n")
    else:
        beforeText[line] = " \n"
    #空白行があると処理が終了してしまう問題があるので修正する
    print("result = " + beforeText[line])

outText = open(dstPath, 'a', encoding='UTF-8')
outText.writelines(beforeText)
outText.close

print("変換が終了しました。UTF-8Nで再読込を行って保存してください。")
print("path : " + srcDir + "  filename : " + dstPath +
      "\nfullPath : " + srcDir + "/" + dstPath)
#convertMesseage.append('これはテストです')
try:
    convertMesseage[0]
except:
   convertMesseage.append('変換時の問題点はありませんでした。')
else:
    convertMesseage.insert(0,'\n変換時に問題が発生しました。')

for i in range(0,len(convertMesseage)):
    print(str(convertMesseage[i]) + "\n")
print("続けるには何かキーを入力してください・・・")
input()
exit()
#引数
#このファイルのパス 変換するmcfunctionファイルのパス 出力ファイルパス datapackのネームスペース
#※ネームスペース内で実行することで自動でパスを取得し、乱数生成functionを正常に生成します。