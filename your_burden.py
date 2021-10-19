# coding: utf_8
#入力想定(引数)
#操作ファイルはburden.txtファイル固定にアクセスするものとする。無ければ生成し通知する。
#データの追加：add <科目> <内容> <提出期限yyyy/mm/dd,hh:mm> <提出先リンク> また、固有番号をそれぞれに付与する。
#データの参照：w <参照タイプ> <sort> まだ期限じゃないもの：yet 期限過ぎた物：old <いつ以降yyyy/mm/dd,hh:mm>※未記入or[all]は全て参照、50件超える場合はエラー　固有番号も表示する
#<sort>は 期限：time 科目名：subj trueが昇順,falseが降順(一番上が一番大きい数字になる)
#データの削除：rme <固有番号> ただしremovedタグを付与するのみ
import datetime
import PySimpleGUI as sg
import os
import re

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
            [sg.Text('操作', size=(3, 1)),sg.Combo(('課題を追加する', '現実を見る（課題を閲覧する）', '存在しない（追加ミス）課題を玉砕する', '完了フラグを付ける'), default_value="課題を追加する",size=(35, 1), key='cmd')],
            [sg.Text('※時間指定について 時間指定(24h)は出来ますが、分、秒単位は無視されます。')],
            #[sg.Input(key='-Input-'), sg.CalendarButton('calender', target='-Input-')],
            [sg.Button('OK'), sg.Button('終了')] ]

window = sg.Window('your_burden', layout)

def writeline_file(text):

    outText = open('./burden.txt', 'a', encoding='UTF-8')
    outText.write(text + "\n")
    outText.close


def data_add():

    main_layout = [
        [sg.Text("課題を追加します。")],
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
                f = open('./burden.txt', 'w')
                f.close()
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
        [sg.Text('操作', size=(3, 1)),sg.Combo(('期限が迫っている未完了の課題を表示する', '期限過ぎているのも含め未完了の課題を表示する', '期限がまだあるが、完了した課題を見て悦に浸る', '期限が過ぎた、絶望の課題','指定日時以降が期限の課題'), default_value="期限が迫っている未完了の課題を表示する",size=(35, 1), key='cmd')],
        [sg.Text("提出期限(yyyy/mm/dd 時:分:秒)"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen',size=(20, 1))],
        [sg.Output(size=(50,10), key='-OUTPUT-')],
        [sg.Button("検索", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]
    
    main_window = sg.Window("課題を追加する", main_layout)

    while True:
        event, values = main_window.read()

        if event in (sg.WIN_CLOSED, "キャンセル"):
            main_window.close()
            break

        elif event == "検索":

            main_window['-OUTPUT-'].update('')

            with open('./burden.txt') as f:
                allData = list(f)

            for i in range(len(allData)):
                allData[i] = allData[i].split('//')
                allData[i][3] = datetime.datetime.strptime(allData[i][3], '%Y-%m-%d %H:%M:%W')

            dt_now = datetime.datetime.now()

            if values['cmd'] == '期限が迫っている未完了の課題を表示する':
                for data in allData:
                    if dt_now <= data[3]:
                        condition = "未完了" if data[4] == "uncompleted\n" else "完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)

            elif values['cmd'] == '期限過ぎているのも含め未完了の課題を表示する':
                for data in allData:
                    if data[4] == "uncompleted\n":
                        condition = "未完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)

            elif values["cmd"] == '期限がまだあるが、完了した課題を見て悦に浸る':
                for data in allData:
                    if dt_now <= data[3] and data[4] == "completed\n":
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)

            elif values["cmd"] == '期限が過ぎた、絶望の課題':
                for data in allData:
                    if dt_now >= data[3] and data[4] == "uncompleted\n":
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)

            elif values["cmd"] == '指定日時以降が期限の課題':
                try: 
                    set_dt = datetime.datetime.strptime(values['kigen'], '%Y-%m-%d %H:%M:%W')
                except:
                    print("エラー：時刻指定が正しくありません。")
                    continue
                for data in allData:
                    if set_dt <= data[3]:
                        condition = "未完了" if data[4] == "uncompleted\n" else "完了"
                        print("-----------------\nNUM:" + data[0] + "\n科目名:" + data[1] + "\n内容:" + data[2] + "\n提出期限:" + str(data[3]) + "\n状態:" + condition)

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
            with open('./burden.txt') as f:
                allData = list(f)
            main_window['-OUTPUT-'].update('')
            for i in range(len(allData)):
                burNum = allData[i].split('//')[0]
                if burNum == values['removeNum']:
                    print(allData[i] + "削除しました。")
                    allData[i] = "#REMOVED!!"
                    allDataStr = ""
                    with open('./burden.txt', mode='w') as f:
                        for i in allData:
                            allDataStr += i
                        f.write(allDataStr)
                    break
            else:
                print("入力値が正しくありません。")
            #ここで番号が入力値と適合した行を#REMOVED!に置き換える。行数を減らすと番号振り当て時に不都合が発生する。

def data_changeflag():
    exit()

while True:
    event, values = window.read()

    if event in (sg.WIN_CLOSED, '終了'):
        break

    elif event == 'OK':
        window.Hide()
            
        if values['cmd'] == '課題を追加する':
            main_return = data_add()
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
