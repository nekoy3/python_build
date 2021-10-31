# coding: utf_8
#間違えて削除した
import datetime
import PySimpleGUI as sg
import os
from sys import exit
import shutil

sg.theme('DarkGreen7')   # デザインテーマの設定

fname = '~/burden.txt'
srcPath = os.path.expanduser(fname)
flag = False

if os.path.exists(srcPath):
    print("ファイル認識",os.path.abspath(srcPath))
else:
    make_layout = [  [sg.Text('ファイルが存在しないため、\n同じ階層に記録用ファイルを作成します。')],
                     [sg.Button('OK'), sg.Button('中止'), sg.Button('過去に作ったファイルを引き継ぐ')] ]
    mkfilewindow = sg.Window('ファイルを新規作成', make_layout)
    while True:
        event, values = mkfilewindow.read()

        if event == "OK":
            mkfilewindow.close()
            with open(srcPath, 'w') as f:
                f.write('')
            break

        elif event in (sg.WIN_CLOSED,"中止"):
            exit()
        
        elif event == "過去に作ったファイルを引き継ぐ":
            repair_window_layout = [  [sg.Text('バージョンアップに伴い、データ保存位置が変更されました。')],
                                      [sg.Text('OKを押すことで、ファイル位置をホームディレクトリ直下に移動しプログラムを継続します。')],
                                      [sg.Button('OK'), sg.Button('キャンセル')] ]
            mkfilewindow.Hide()
            repairwindow = sg.Window('ファイルを引き継ぐ', repair_window_layout)
            while True:
                event, values = repairwindow.read()

                if event == "OK":
                    repairwindow.close()
                    try:
                        shutil.copy('./burden.txt', os.path.dirname(srcPath))
                    except FileNotFoundError:
                        error_layout = [
                            [sg.Text("ファイルの移動に失敗しました。")],
                            [sg.Text("このアプリと同じ階層にburden.txtが存在しません。")],
                            [sg.Button("OK", size=(10, 1))]]
                        error_window = sg.Window('error', error_layout)

                        while True:
                            event1, values1 = error_window.read()
                            if event1 in (sg.WIN_CLOSED, "OK"):
                                error_window.close()
                                mkfilewindow.UnHide()
                                break
                    else:
                        if os.path.exists(srcPath):
                            success_layout  = [
                                [sg.Text("ファイルの移動に成功しました。")],
                                [sg.Button("OK", size=(10, 1))]]
                            success_window = sg.Window('success', success_layout)
                            os.remove('./burden.txt')

                            while True:
                                event1, values1 = success_window.read()
                                if event1 in (sg.WIN_CLOSED, "OK"):
                                    success_window.close()
                                    flag = True
                                    break
                        else:
                            error_layout = [
                                [sg.Text("ファイルの移動に失敗しました。")],
                                [sg.Text("ファイルは存在しますが何かしらの問題が発生しました。このエラーが発生した場合は作成者に連絡してください。")],
                                [sg.Text("os.path.exists(srcPath)=" + os.path.exists(srcPath) + " os.path.exists(./burden.txt)=" + os.path.exists('./burden.txt'))],
                                [sg.Button("OK", size=(10, 1))]]
                            error_window = sg.Window('error', error_layout)

                            while True:
                                event1, values1 = error_window.read()
                                if event1 in (sg.WIN_CLOSED, "OK"):
                                    error_window.close()
                                    exit()

                elif event in (sg.WIN_CLOSED,"キャンセル"):
                    repairwindow.close()
                    mkfilewindow.UnHide()
                    break
                if flag:
                    break
            if flag:
                break   #<--メソッド化してreturnすれば省略できるので後々対応

#ここまで初期処理

def writeline_file(text):
    with open(srcPath, 'a', encoding='UTF-8') as f:
        f.write(text + "\n") #追記モードでファイルを開く

def all_writefile(array):
    with open(srcPath, 'w', encoding='UTF-8') as f:
        f.writelines(array) #既存データはすべて削除される

def readFile():
    with open(srcPath, 'r', encoding='UTF-8') as f:
        data = list(f) #1行ずつリストに格納
    delList = []
    for i in range(len(data)):
        if data[i] == "#REMOVED!!\n":
            delList.append(i)
    for i in list(reversed(delList)):
        data.pop(i)
    return data

def data_create(a,b,c,d,e):
    #識別番号 // 科目名 // 詳細情報 // 提出期限yyyy/mm/dd hh:mm:ss // flag (completed, uncompleted)
    s = a + "//" + b + "//" + c + "//" + d + "//" + e
    return s

def error_export(e):
    s = "[type]:" + str(type(e)) + "\n[all]:" + str(e)
    return s

def error_open(e): #exceptでas eでエラーを拾って実行し、その後returnとウィンドウのcloseを実行する
    error_layout = [
        [sg.Text("データ読み込み時に問題が発生しました。実行を中止します。")],
        [sg.Text("原因が解決できない場合はこの画面のスクリーンショットを取り製作者に見せてください。")],
        [sg.Text(error_export(e))],
        [sg.Button("OK", size=(10, 1))]]
    error_window = sg.Window("error", error_layout)
    while True:
        event, values = error_window.read()
        if event in (sg.WIN_CLOSED, "OK"):
            error_window.close()
            return

def message_window(msg,*name): #アスタリスクを付けた仮引数は可変引数として、存在しても無くても可
    error_layout = [
        [sg.Text(msg)],
        [sg.Button("OK", size=(30, 1))]]
    error_window = sg.Window([name if name != "" else "error"], error_layout)
    while True:
        event, values = error_window.read()
        if event == sg.WIN_CLOSED or event == "OK":
            error_window.close()
            return

def how_to_help():
    main_layout = [
        [sg.Text("このプログラムは、課題を一括で管理し効率化を図ったプログラムです。")],
        [sg.Text("課題を登録したいとき「課題を追加」、課題を一括で登録したいとき「課題を一括で追加")],
        [sg.Text("課題の完了を登録したいとき「完了フラグを付ける」、課題を閲覧する時「現実を見る」")],
        [sg.Text("課題を間違えて追加してしまった場合は「存在しない課題を玉砕する」")],
        [sg.Text("という操作のみです。分からない事があれば製作者(猫山さん。)に聞いてください。")],
        [sg.Text("")],
        [sg.Text("データは C\\Users\\ﾕｰｻﾞｰ名\\burden.txt に配置しています。今後編集機能を実装するかもしれませんが、")],
        [sg.Text("微調整はテキストファイルを触ったほうが行いやすいかもしれません。難読化は行っておりません。")],
        [sg.Button("OK", size=(10, 1))]]

    main_window = sg.Window("使い方の説明", main_layout)

    while True:
        event, values = main_window.read()
        if event in (sg.WIN_CLOSED,"OK"):
            main_window.close()
            break
    return None

def renumbering(data):
    for i in range(len(data)):
        splitTemp = data[i].split('//')
        splitTemp[0] = str(i)
        data[i] = data_create(splitTemp[0],splitTemp[1],splitTemp[2],splitTemp[3],splitTemp[4])
    return data

def confirm_window(msg):
    confirm_layout = [
        [sg.Text(msg)],
        [sg.Button("OK", size=(10, 1)), sg.Button("Cancel", size=(10, 1))]]

    confirm_window = sg.Window("確認", confirm_layout)

    while True:
        event, values = confirm_window.read()
        if event in (sg.WIN_CLOSED, "Cancel"):
            confirm_window.close()
            return False
        elif event == "OK":
            confirm_window.close()
            return True

def days_skip_time(d):
    time = datetime.datetime.strptime(d, '%Y-%m-%d %H:%M:%S') + datetime.timedelta(days=7)
    s = time.strftime('%Y-%m-%d %H:%M:%S')
    return s

def skip_holiday(array,num):
    first = True
    nowSkipDataTime = None
    confirmData = []
    for i in range(len(array)):
        splitTemp = array[i].split('//')
        if splitTemp[3] == nowSkipDataTime and first == False:
            nowSkipDataTime = days_skip_time(splitTemp[3])
            splitTemp[3] = nowSkipDataTime
            array[i] = data_create(splitTemp[0],splitTemp[1],splitTemp[2],splitTemp[3],splitTemp[4])
            confirmData.append(array[i])
        elif splitTemp[3] == nowSkipDataTime and first == False:
            return array

        if splitTemp[0] == str(num) and first:
            first = False
            firstData = array[i]
            nowSkipDataTime = days_skip_time(splitTemp[3])
            splitTemp[3] = nowSkipDataTime
            array[i] = data_create(splitTemp[0],splitTemp[1],splitTemp[2],splitTemp[3],splitTemp[4])
            confirmData.append(array[i])
    return array,confirmData,firstData

def data_add_bulk():

    main_layout = [
        [sg.Text("課題を一括で追加します。")],
        [sg.Text("講義の初回と最終回、科目名、提出期限（時間まで指定可能）、詳細（内容や提出先）を記述し一括にその科目最終回までの課題を登録します。")],
        [sg.Text("科目名"),sg.Input(key='subject',size=(10, 1)),sg.Text("課題内容"),sg.Input(key='subjectInfo',size=(35, 1))],
        [sg.Text("提出期限(回を重ねるたび7の倍数日に登録)(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(35, 1), readonly=True, text_color='#ff69b4')],
        [sg.Text("最初の提出時の回"),sg.Combo(([i for i in range(1,15)]),readonly=True,key='start',size=(10, 1), text_color='#ff69b4', default_value=1),sg.Text("最終提出時の回"),sg.Combo(([i for i in range(1,15)]),readonly=True,key='end',size=(10, 1),text_color='#ff69b4', default_value=14)],
        [sg.Text("最初の提出時の回には次回の講義分の課題（例：第七回なら「7」）、最後は最終回の値(例：14回講義で第十四回が期末試験で課題がない場合は「13」)と入力")],
        [sg.Button("追加", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]

    main_window = sg.Window("課題を追加する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED,"キャンセル"):
            main_window.close()
            break

        elif event == "追加":
            if values['subject'] == "" or values['subjectInfo'] == "" or values['kigen'] == "" or values['start'] == "" or values['end'] == "":
                message_window("空白欄が存在します。")
                continue

            start = int(values['start'])
            end = int(values['end'])

            if start >= end or start < 1 or end > 14:
                message_window("値が不正です。")
                continue

            f = readFile()
            getNumberArray = [0] + [int(readArray.split('//')[0]) for readArray in f]
            newNumber = max(getNumberArray) + 1
            
            try:
                strDate = values['kigen'][:-5] + '00:00'
                bulkDate = datetime.datetime.strptime(strDate, '%Y-%m-%d %H:%M:%W')
            except Exception as e:
                error_open(e)
                main_window.close()
                return None

            bulkList = []
            for i in range(start,end+1):
                bulkList.append([bulkDate.strftime('%Y-%m-%d %H:%M:%S'), i])
                bulkDate = bulkDate + datetime.timedelta(days=7)
            
            for bLine in bulkList:
                data = data_create(str(newNumber),values['subject'],"[第" + str(bLine[1]) + "]" + values['subjectInfo'].replace("//","/"),bLine[0],"uncompleted")
                writeline_file(data)
                newNumber += 1

            confirm_layout = [
                [sg.Text("課題を追加しました。続けて追加しますか？")],
                [sg.Button("追加", size=(10, 1)),sg.Button("追加せず、終了", size=(18, 1))]]

            confirm_window = sg.Window('confirm', confirm_layout)

            while True:
                event1, values1 = confirm_window.read()

                if event1 in (sg.WIN_CLOSED, "追加せず、終了"):
                    confirm_window.close()
                    main_window.close()
                    return None

                elif event1 == "追加":
                    confirm_window.close()
                    main_window.UnHide()

                    if values1['check'] == False:
                        main_window['subject']('')
                        main_window['subjectInfo']('')
                        main_window['kigen']('')
                        break


def data_add():

    main_layout = [
        [sg.Text("課題を追加します。")],
        [sg.Text("科目名、提出期限（時間まで指定可能）、詳細（内容や提出先）を記述し課題を登録します。")],
        [sg.Text("科目名"),sg.Input(key='subject',size=(10, 1)),sg.Text("課題内容"),sg.Input(key='subjectInfo',size=(35, 1))],
        [sg.Text("提出期限(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(35, 1), readonly=True, text_color='#ff69b4')],
        [sg.Button("追加", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]

    main_window = sg.Window("課題を追加する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED,"キャンセル"):
            main_window.close()
            return None

        elif event == "追加":
            f = readFile()
            getNumberArray = [0] + [int(readArray.split('//')[0]) for readArray in f]
            newNumber = max(getNumberArray) + 1

            if values['subject'] == "" or values['subjectInfo'] == "" or values['kigen'] == "":
                message_window("空白欄が存在します。")
                continue

            strDate = values['kigen'][:-5] + '00:00'
            data = data_create(str(newNumber),values['subject'],values['subjectInfo'].replace("//","/"),strDate,'uncompleted')
            writeline_file(data)

            confirm_layout = [
                [sg.Text("課題を追加しました。続けて追加しますか？")],
                [sg.Checkbox("※同じ科目の課題を追加する場合はチェック", key='check')],
                [sg.Button("追加", size=(10, 1)),sg.Button("追加せず、終了", size=(18, 1))]]

            confirm_window = sg.Window('confirm', confirm_layout)

            while True:
                event1, values1 = confirm_window.read()

                if event1 == sg.WIN_CLOSED or event1 == "追加せず、終了":
                    confirm_window.close()
                    main_window.close()
                    return None

                elif event1 == "追加":
                    confirm_window.close()
                    main_window.UnHide()

                    if values1['check'] == False:
                        main_window['subject']('')
                        main_window['subjectInfo']('')
                        main_window['kigen']('')
                        break


def data_select():

    main_layout = [
        [sg.Text("課題を検索します。")],
        [sg.Text('操作', size=(10, 1)),sg.Combo(('今後一週間内での課題を表示する(未完了のみ)','今後一週間内での課題を表示する(全て)','期限が迫っている未完了の課題を表示する', '期限過ぎているのも含め未完了の課題を表示する', '期限がまだあるが、完了した課題を見て悦に浸る', '期限が過ぎた、絶望の課題','指定日時以降が期限の課題'), default_value="今後一週間内での課題を表示する(未完了のみ)",size=(55, 1), key='cmd', readonly=True, text_color='#ff69b4')],
        [sg.Text("提出期限(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(20, 1), readonly=True, text_color='#ff69b4')],
        [sg.Output(size=(50,10), key='-OUTPUT-')],
        [sg.Button("検索", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("課題を検索する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            return None

        elif event == "検索":
            main_window['-OUTPUT-'].update('')
            file = readFile()
            for i in range(len(file)):
                file[i] = file[i].split('//')
                try:
                    file[i][3] = datetime.datetime.strptime(file[i][3], '%Y-%m-%d %H:%M:%W')
                except Exception as e:
                    error_open(e)

            dt_now = datetime.datetime.now()
            failFlag = True

            #フラグ状態、提出期限期間を個々で入力させた方がスマート？
            if values['cmd'] == '今後一週間内での課題を表示する(未完了のみ)':
                for data in file:
                    if dt_now <= data[3] and (dt_now + datetime.timedelta(days=7)) >= data[3] and data[4] == "uncompleted\n":
                        condition = "未完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            if values['cmd'] == '今後一週間内での課題を表示する(全て)':
                for data in file:
                    if dt_now <= data[3] and (dt_now + datetime.timedelta(days=7)) >= data[3]:
                        condition = "未完了" if data[4] == "uncompleted\n" else "完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            if values['cmd'] == '期限が迫っている未完了の課題を表示する':
                for data in file:
                    if dt_now <= data[3]:
                        condition = "未完了" if data[4] == "uncompleted\n" else "完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            elif values['cmd'] == '期限過ぎているのも含め未完了の課題を表示する':
                for data in file:
                    if data[4] == "uncompleted\n":
                        condition = "未完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            elif values["cmd"] == '期限がまだあるが、完了した課題を見て悦に浸る':
                for data in file:
                    if dt_now <= data[3] and data[4] == "completed\n":
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            elif values["cmd"] == '期限が過ぎた、絶望の課題':
                for data in file:
                    if dt_now >= data[3] and data[4] == "uncompleted\n":
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            elif values["cmd"] == '指定日時以降が期限の課題':
                try: 
                    set_dt = datetime.datetime.strptime(values['kigen'], '%Y-%m-%d %H:%M:%W')
                except:
                    print("エラー：時刻指定が正しくありません。")
                    continue
                for data in file:
                    if set_dt <= data[3]:
                        condition = "未完了" if data[4] == "uncompleted\n" else "完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)
                        failFlag = False

            if failFlag:
                print("該当データがありません。")

def data_remove():
    main_layout = [
        [sg.Text("課題を削除します。")],
        [sg.Text("検索して表示された番号を指定して実行し削除してください。"),sg.Input(key='removeNum',size=(5, 1))],
        [sg.Output(size=(50, 1), key='-OUTPUT-')],
        [sg.Button("削除", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("課題を削除する", main_layout)

    backup = None
    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            return None

        elif event == "削除":
                file = readFile()
                main_window['-OUTPUT-'].update('')
                for i in range(len(file)):
                    burNum = file[i].split('//')[0]
                    try:
                        rmNum = int(values['removeNum'])
                    except:
                        main_window['-OUTPUT-'].update("エラー：削除する番号を入力してください。")
                        continue
                    if burNum == str(rmNum):
                        confirmflag = confirm_window("本当に削除してもよろしいですか？二度と復元できません。\n一括追加した課題の場合は特に注意してください。（祝日分を飛ばす機能が実装されています。）\n" + file[i])
                        if confirmflag:
                            print(file[i] + "削除しました。")
                            file.pop(i)
                            file = renumbering(file)
                            all_writefile(file)
                            break
                        else:
                            print("削除を中止しました。")
                            break
                else:
                    print("入力値が正しくありません。")

def data_changeflag():
    main_layout = [
        [sg.Text("課題のフラグを変更します。（未完了→完了、完了→未完了）")],
        [sg.Text("検索して表示された番号を指定して実行し削除してください。"),sg.Input(key='flagNum',size=(5, 1))],
        [sg.Output(size=(50, 1), key='-OUTPUT-')],
        [sg.Button("変更", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("課題のフラグを変更する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            return None

        elif event == "変更":
            file = readFile()
            main_window['-OUTPUT-'].update('')
            failFlag = True

            for i in range(len(file)):
                data = file[i].split('//')
                try:
                    flagNum = int(values['flagNum'])
                except:
                    main_window['-OUTPUT-'].update("エラー：変更する番号を入力してください。")
                    continue

                if data[0] == str(flagNum):
                    data[4] = "uncompleted\n" if data[4] == "completed\n" else "completed\n"
                    file[i] = data_create(data[0],data[1],data[2],data[3],data[4])
                    all_writefile(file)
                    condition = str(["未完了" if data[4] == "uncompleted\n" else "完了"])
                    print(str(data[0]) + "番のデータ(" + str(data[1]) + ")のフラグを" + condition + "に変更しました。")
                    failFlag = False
                    break
                
            if failFlag:
                print("入力値が正しくありません。")


def data_repair():
    main_layout = [
        [sg.Text("β1.0.0にてデータ識別番号を割り振れないバグが存在しました。")],
        [sg.Text("実行すると、バグを検知し問題がある場合修復を実行します。")],
        [sg.Button("修復", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("データの修復", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            return None

        elif event == "修復":
            main_window.Hide()
            file = readFile()
            bugCheck = 0
            fixFlag = False
            for i in file:
                if i.split('//')[0] in ("0", "1"):
                    bugCheck += 1
                if bugCheck >= 3:
                    fixFlag = True
                    break

            if fixFlag:
                fixedFileResult = renumbering(file)
                all_writefile(fixedFileResult)

                fixed_layout = [
                    [sg.Text("データを修復しました。")],
                    [sg.Button("OK", size=(10, 1))]]
                fixed_window = sg.Window("complete", fixed_layout)
                while True:
                    event, values = fixed_window.read()

                    if event in (sg.WIN_CLOSED, "OK"):
                        fixed_window.close()
                        return None
            else:
                message_window("バグは見つかりませんでした。","fixed")
                return None
        
def data_skip():
    main_layout = [
        [sg.Text("祝日分を飛ばす機能を実装しました。")],
        [sg.Text("祝日によって存在しない提出期限の日のデータの番号を指定して実行すると、")],
        [sg.Text("一括で追加された課題含め、一週間期限をスキップします。")],
        [sg.Text("例：水曜日が祝日で月曜日期限の第七回プログラム演習CXIVが延期になった↓")],
        [sg.Text("「月曜日提出期限」に設定された第7回プログラム演習のデータを指定して実行する")],
        [sg.Output(size=(50, 1), key='-OUTPUT-'),sg.Input(key='skipNum',size=(5, 1))],
        [sg.Button("実行", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("祝日分を飛ばす", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            return None

        elif event == "実行":
            file = readFile()
            main_window['-OUTPUT-'].update('')
            try:
                skipNum = int(values['skipNum'])
            except:
                main_window['-OUTPUT-'].update("エラー：祝日分を飛ばす日数を入力してください。")
                continue

            if skipNum > 0:
                skipFile,confirmArray,firstData = skip_holiday(file,skipNum)
                confirmString = ''
                for i in confirmArray:
                    a = i.split('//')
                    s = "num=" + a[0] + " subject=" + a[1] + " date=" + a[3] + " flag=" + str(["完了" if a[4] == "completed\n" else "未完了"]) + "\n"
                    confirmString += str(s)
                confirmFlag = confirm_window("これらのデータを一括に一週間分スキップします。\nこの操作は取り消せません。よろしいですか？\n" + confirmString)
                if confirmFlag:
                    all_writefile(skipFile)
                    print("一週間分スキップしました。最初のデータの結果を表示します。\n" + confirmArray[0] + "↑変更後\n" + firstData)
                else:
                    print("キャンセルしました。")
            else:
                print("入力値が正しくありません。")

#メイン処理

layout = [  [sg.Text('大学からのburdenを管理します。')],
            [sg.Text('操作', size=(3, 1)),sg.Combo(('課題を追加する', '現実を見る（課題を閲覧する）', '完了フラグを付ける', '課題を一括で追加する', '祝日分でスキップされた課題を操作する', '[b1.0.0利用者向け]ファイルの修復', '存在しない（追加ミス）課題を玉砕する'), default_value="課題を追加する",size=(35, 1), key='cmd', readonly=True, text_color='#ff69b4')],
            [sg.Button('使い方を表示する', size=(30, 1))],
            [sg.Button('OK', size=(10, 1)), sg.Button('終了', size=(10, 1))] ]

window = sg.Window('your_burden', layout)

while True:
    event, values = window.read()

    if event in (sg.WIN_CLOSED, '終了'):
        exit()
    elif event == "使い方を表示する":
        window.Hide()
        main_return = how_to_help()
    elif event == 'OK':
        window.Hide()
            
        if values['cmd'] == '課題を追加する':
            main_return = data_add()
        if values['cmd'] == '課題を一括で追加する':
            main_return = data_add_bulk()
        elif values['cmd'] == '現実を見る（課題を閲覧する）':
            main_return = data_select()
        elif values['cmd'] == '存在しない（追加ミス）課題を玉砕する':
            main_return = data_remove()
        elif values['cmd'] == '完了フラグを付ける':
            main_return = data_changeflag()
        elif values['cmd'] == '[b1.0.0利用者向け]ファイルの修復':
            main_return = data_repair()
        elif values['cmd'] == '祝日分でスキップされた課題を操作する':
            main_return = data_skip()

    if main_return is None:
        window.UnHide()
    else:
        exit()
