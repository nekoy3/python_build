# coding: utf_8
#操作ファイルはburden.txtファイル固定にアクセスするものとする。無ければ生成し通知する。
import datetime
import PySimpleGUI as sg
import os

sg.theme('DarkGreen7')   # デザインテーマの設定

srcPath = './burden.txt'
if os.path.exists(srcPath):
    print("ファイル認識",os.path.abspath(srcPath))
else:
    make_layout = [  [sg.Text('ファイルが存在しないため、\n同じ階層に記録用ファイルを作成します。')],
                     [sg.Button('OK'), sg.Button('中止')] ]
    mkfilewindow = sg.Window('ファイルを新規作成', make_layout)
    while True:
        event, values = mkfilewindow.read()

        if event == "OK":
            mkfilewindow.close()
            f = open(srcPath, 'w')
            f.write('')
            f.close()
            break
        elif event in (sg.WIN_CLOSED,"中止"):
            exit()


layout = [  [sg.Text('大学からのburdenを管理します。')],
            [sg.Text('操作', size=(3, 1)),sg.Combo(('課題を追加する', '現実を見る（課題を閲覧する）', '存在しない（追加ミス）課題を玉砕する', '完了フラグを付ける', '課題を一括で追加する'), default_value="課題を追加する",size=(35, 1), key='cmd')],
            #[sg.Text('※時間指定について 時間指定(24h)は出来ますが、分、秒単位は無視されます。')],
            #[sg.Input(key='-Input-'), sg.CalendarButton('calender', target='-Input-')],
            [sg.Button('使い方を表示する', size=(30, 1))],
            [sg.Button('OK'), sg.Button('終了')] ]

window = sg.Window('your_burden', layout)

def writeline_file(text):
    with open('./burden.txt', 'a', encoding='UTF-8') as f:
        f.write(text + "\n")

def readFile():
    with open('./burden.txt', 'r', encoding='UTF-8') as f:
        data = list(f)
    delList = []
    for i in range(len(data)):
        if data[i] == "#REMOVED!!\n":
            delList.append(i)
    for i in list(reversed(delList)):
        data.pop(i)
    return data

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

def data_add_bulk():

    main_layout = [
        [sg.Text("課題を一括で追加します。")],
        [sg.Text("講義の初回と最終回、科目名、提出期限（時間まで指定可能）、詳細（内容や提出先）を記述し一括にその科目最終回までの課題を登録します。")],
        [sg.Text("科目名"),sg.Input(key='subject',size=(10, 1)),sg.Text("課題内容"),sg.Input(key='subjectInfo',size=(35, 1))],
        [sg.Text("提出期限(回を重ねるたび7の倍数日に登録)(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(35, 1))],
        [sg.Text("最初の提出時の回"),sg.Input(key='start',size=(10, 1)),sg.Text("最後の提出回"),sg.Input(key='end',size=(10, 1))],
        [sg.Text("最初の提出時の回には次回の講義分の課題（例：第七回なら「7」）、最後は最終回の値(例：14回講義で第十四回が期末試験で課題がない場合は「13」)と入力")],
        [sg.Button("追加", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]

    main_window = sg.Window("課題を追加する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED,"キャンセル"):
            main_window.close()
            break

        elif event == "追加":
            start = int(values['start'])
            end = int(values['end'])

            if values['subject'] == "" or values['subjectInfo'] == "" or values['kigen'] == "" or start == "" or end == "":
                error_layout = [
                    [sg.Text("空白欄が存在します。")],
                    [sg.Button("OK", size=(10, 1))]]
                error_window = sg.Window("error", error_layout)

                while True:
                    event, values = error_window.read()
                    if event in (sg.WIN_CLOSED, "OK"):
                        error_window.close()
                        break
                continue

            if start >= end or start < 1 or end > 14:
                error_layout = [
                    [sg.Text("値が不正です。")],
                    [sg.Button("OK", size=(10, 1))]]
                error_window = sg.Window('error', error_layout)

                while True:
                    event1, values1 = error_window.read()
                    if event1 in (sg.WIN_CLOSED, "OK"):
                        error_window.close()
                        break
                continue

            try:
                with open('./burden.txt') as f:
                    totalLine = sum(1 for line in f)
            except:
                totalLine = 0
            
            strDate = values['kigen'][:-5] + '00:00'
            bulkDate = datetime.datetime.strptime(strDate, '%Y-%m-%d %H:%M:%W')
            bulkList = []
            for i in range(start,end+1):
                bulkList.append([bulkDate.strftime('%Y-%m-%d %H:%M:%S'), i])
                bulkDate = bulkDate + datetime.timedelta(days=7)
            
            for bLine in bulkList:
                data = str(totalLine) + "//" + values['subject'] + "//[第" + str(bLine[1]) + "]" + values['subjectInfo'].replace("//","/") + "//" + bLine[0] + "//uncompleted"
                writeline_file(data)
                totalLine += 1

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
        [sg.Text("提出期限(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(35, 1))],
        [sg.Button("追加", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]

    main_window = sg.Window("課題を追加する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED,"キャンセル"):
            main_window.close()
            break

        elif event == "追加":
            try:
                with open('./burden.txt') as f:
                    totalLine = sum(1 for line in f)
            except:
                totalLine = 0

            if values['subject'] == "" or values['subjectInfo'] == "" or values['kigen'] == "":
                error_layout = [
                    [sg.Text("空白欄が存在します。")],
                    [sg.Button("OK", size=(10, 1))]]
                error_window = sg.Window("error", error_layout)

                while True:
                    event, values = error_window.read()
                    if event == sg.WIN_CLOSED or event == "OK":
                        error_window.close()
                        break
                continue

            strDate = values['kigen'][:-5] + '00:00'
            data = str(totalLine) + "//" + values['subject'] + "//" + values['subjectInfo'].replace("//","/") + "//" + strDate + "//uncompleted"

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
        [sg.Text('操作', size=(10, 1)),sg.Combo(('今後一週間内での課題を表示する(未完了のみ)','今後一週間内での課題を表示する(全て)','期限が迫っている未完了の課題を表示する', '期限過ぎているのも含め未完了の課題を表示する', '期限がまだあるが、完了した課題を見て悦に浸る', '期限が過ぎた、絶望の課題','指定日時以降が期限の課題'), default_value="今後一週間内での課題を表示する(未完了のみ)",size=(55, 1), key='cmd')],
        [sg.Text("提出期限(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(20, 1))],
        [sg.Output(size=(50,10), key='-OUTPUT-')],
        [sg.Button("検索", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("課題を検索する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            break

        elif event == "検索":

            main_window['-OUTPUT-'].update('')

            file = readFile()

            for i in range(len(file)):
                file[i] = file[i].split('//')
                file[i][3] = datetime.datetime.strptime(file[i][3], '%Y-%m-%d %H:%M:%W')

            dt_now = datetime.datetime.now()
            failFlag = True
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

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            break

        elif event == "削除":
            file = readFile()
            main_window['-OUTPUT-'].update('')
            for i in range(len(file)):
                burNum = file[i].split('//')[0]
                if burNum == values['removeNum']:
                    print(file[i] + "削除しました。")
                    file[i] = "#REMOVED!!\n"
                    fileStr = ""
                    for j in file:
                        fileStr += i
                    with open('./burden.txt', mode='w') as f:
                        f.write(fileStr)
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
            break

        elif event == "変更":
            file = readFile()
            main_window['-OUTPUT-'].update('')
            failFlag = True

            for i in range(len(file)):
                data = file[i].split('//')
                if data[0] == values['flagNum']:
                    data[4] = "uncompleted\n" if data[4] == "completed\n" else "completed\n"
                    file[i] = ""
                    for j in data:
                        file[i] += j + "//"
                    file[i] = file[i][:-2]
                    condition = str(["未完了" if data[4] == "uncompleted\n" else "完了"])
                    print(str(data[0]) + "番のデータ(" + str(data[1]) + ")のフラグを" + condition + "に変更しました。")
                    failFlag = False
                    break
                
            if failFlag:
                print("入力値が正しくありません。")
                break

            fileStr = ""
            for j in file:
                fileStr += j
            with open('./burden.txt', mode='w') as f:
                f.write(fileStr)

#一括で課題を追加する項目と、一週間分の課題を表示する機能を追加
while True:
    event, values = window.read()

    if event in (sg.WIN_CLOSED, '終了'):
        break
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

    if main_return is None:
        window.UnHide()

window.close()
exit()

dt_now = datetime.datetime.now()
dateText = dt_now.strftime("%Y/%m/%d %H:%M:%s")
print(dt_now)
