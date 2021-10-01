# coding: utf_8
#入力想定(引数)
#操作ファイルはburden.txtファイル固定にアクセスするものとする。無ければ生成し通知する。
#データの追加：add <科目> <内容> <提出期限yyyy/mm/dd,hh:mm> <提出先リンク> また、固有番号をそれぞれに付与する。
#データの参照：w <参照タイプ> <sort> まだ期限じゃないもの：yet 期限過ぎた物：old <いつ以降yyyy/mm/dd,hh:mm>※未記入or[all]は全て参照、50件超える場合はエラー　固有番号も表示する
#<sort>は 期限：time 科目名：subj trueが昇順,falseが降順(一番上が一番大きい数字になる)
#データの削除：rme <固有番号>
import sys
import datetime
import PySimpleGUI as sg

sg.theme('DarkGreen7')   # デザインテーマの設定

layout = [  [sg.Text('大学からのburdenを管理します。')],
            [sg.Text('操作', size=(3, 1)),sg.Combo(('課題を追加する', '課題を閲覧する', '課題を玉砕する', '完了フラグを付ける'), default_value="課題を追加する",size=(20, 1), key='cmd')],
            [sg.Text('', key='msg')],
            #[sg.Input(key='-Input-'), sg.CalendarButton('calender', target='-Input-')],
            [sg.Button('OK'), sg.Button('キャンセル')] ]

window = sg.Window('your_burden', layout)

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
            break
        elif event == "追加する":
            data = values['subject'] + "/" + values['subject'].replace("/",",") + "/" + values['kigen']
            print(data)
            return None

def data_select():
    exit()
def data_remove():
    exit()
def data_changeflag():
    exit()

while True:
    event, values = window.read()

    if event == sg.WIN_CLOSED or event == 'キャンセル':
        break
    elif event == 'OK':
        window.Hide()
        if values['cmd'] == '課題を追加する':
            window['msg'].Update('課題を追加します。')
            main_return = data_add()
            if main_return is None:
                break
        elif values['cmd'] == '課題を閲覧する':
            window['msg'].Update('現実を見ましょう。')
        elif values['cmd'] == '課題を玉砕する':
            window['msg'].Update('その課題、本当に存在しませんか？')
        elif values['cmd'] == '完了フラグを付ける':
            window['msg'].Update('課題、やるべきことは終わりましたか？')

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
else:
    print("不正なコマンドです。")
    exit()