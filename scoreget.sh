#!/usr/bin/bash

#サーバー起動時に実行され、サーバー停止時に終了する。
n=' '
while (true); do
    log=`tail -n 2 logs/latest.log`
    if [ "`echo $log | grep "issued server command: /w @s ランキング参照"`" ]; then
        screen -p 0 -S aziServer -X eval 'stuff "save-all\015"'
        name=`echo $log | sed -r 's/ issued server command: \/w @s ランキング参照//g' | rev | awk '{ print $1 }' | rev`
        screen -p 0 -S aziServer -X eval 'stuff "tellraw '$name' {"'
        screen -p 0 -S aziServer -X stuff \"text\":\"--------------------スコアランキング--------------------\"}\\015
        #screen -p 0 -S aziServer -X eval 'stuff "\015"'
        #ファイルを読み込む
        python nbt_edit.py ./azi_server/data/scoreboard.dat 1,totalScoreXpl,t export
        text='./azi_server/data/export.txt'
        #区切り文字を改行に指定
        IFS=$'\n'
        file=(`cat "$text"`)
        ln=0
        rank=0
        for s in "${file[@]}"; do
            rank=$((rank += 1))
            text=`echo \#${rank} - ${s/Name\:}`
            text=${text/Obj\:totalScoreXpl  }
            if [ `echo $text|grep ${name}` ]; then
                my=${text}
            fi
            if [ $rank -le 10 ]; then
                screen -p 0 -S aziServer -X eval 'stuff "tellraw '${name}' {"'
                screen -p 0 -S aziServer -X stuff \"text\":\"${text}\"}\\015
            fi
        done
        screen -p 0 -S aziServer -X eval 'stuff "tellraw '$name' {"'
        screen -p 0 -S aziServer -X stuff \"text\":\"----------------------------------------\"}\\015
        screen -p 0 -S aziServer -X eval 'stuff "tellraw '${name}' {"'
        screen -p 0 -S aziServer -X stuff \"text\":\"${my}\"}\\015
        screen -p 0 -S aziServer -X eval 'stuff "w @s a\015"'
        screen -p 0 -S aziServer -X eval 'stuff "w @s a\015"'
    fi
    sleep 1
done
#issued server command: /w @s ランキング参照