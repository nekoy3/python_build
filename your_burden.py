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

sg.theme('DarkGreen7')   # デザインテーマの設定

layout = [  [sg.Text('大学からのburdenを管理します。')],
            [sg.Text('操作', size=(3, 1)),sg.Combo(('課題を追加する', '課題を閲覧する', '課題を玉砕する', '完了フラグを付ける'), default_value="課題を追加する",size=(20, 1), key='cmd')],
            [sg.Text('', key='msg')],
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
        [sg.Text("科目名"),sg.Input(key='subject'),sg.Text("課題内容"),sg.Input(key='subjectInfo')],
        [sg.Text("提出期限"),sg.CalendarButton('calender', target='kigen'),sg.Input(key='kigen')],
        [sg.Button("追加する", size=(10, 1)),sg.Button("キャンセル", size=(10, 1))]]

    main_window = sg.Window("課題を追加する", main_layout)

    while True:
        event, values = main_window.read()

        if event == sg.WIN_CLOSED or event == "キャンセル":
            main_window.close()
            break
        elif event == "追加する":
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
                error_window = sg.Window("error!", error_layout)

                while True:
                    event, values = error_window.read()
                    if event == sg.WIN_CLOSED or event == "OK":
                        error_window.close()
                        break
                continue

            data = str(totalLine) + "//" + values['subject'] + "//" + values['subjectInfo'].replace("//","/") + "//" + values['kigen'] + "//uncompleted"

            writeline_file(data)

            confirm_layout = [
                [sg.Text("課題を追加しました。続けて追加しますか？")],
                [sg.Checkbox("※同じ科目の課題を追加する場合はチェック", key='check')],
                [sg.Button("追加する", size=(10, 1)),sg.Button("追加せず、終了する", size=(18, 1))]]

            confirm_window = sg.Window('confirm', confirm_layout)

            while True:
                event1, values1 = confirm_window.read()

                if event1 == sg.WIN_CLOSED or event1 == "追加せず、終了する":
                    confirm_window.close()
                    main_window.close()
                    return None

                elif event1 == "追加する":
                    confirm_window.close()
                    main_window.UnHide()

                    if values1['check'] == False:
                        main_window['subject']('')
                    main_window['subjectInfo']('')
                    main_window['kigen']('')
                    break
   

def data_select():
    exit()
def data_remove():
    exit()
def data_changeflag():
    exit()

while True:
    event, values = window.read()

    if event == sg.WIN_CLOSED or event == '終了':
        break
    elif event == 'OK':
        window.Hide()
            
        if values['cmd'] == '課題を追加する':
            window['msg'].Update('課題を追加します。')
            main_return = data_add()
        elif values['cmd'] == '課題を閲覧する':
            window['msg'].Update('現実を見ましょう。')
            main_return = data_select()
        elif values['cmd'] == '課題を玉砕する':
            window['msg'].Update('その課題、本当に存在しませんか？')

        elif values['cmd'] == '完了フラグを付ける':
            window['msg'].Update('課題、やるべきことは終わりましたか？')


    if main_return is None:
        window.UnHide()

window.close()
exit()

dt_now = datetime.datetime.now()
dateText = dt_now.strftime("%Y/%m/%d %H:%M")
print(dt_now)

if cmd == "add":
    data_add()
elif cmd == "w":
    data_select()
elif cmd == "rme":
    data_remove()