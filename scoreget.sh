#!/usr/bin/bash

#サーバー起動時に実行され、サーバー停止時に終了する。
n=' '
while (true); do
    log=`tail -n 2 logs/latest.log`
    if [ "`echo $log | grep "issued server command: /w @s ランキング参照"`" ]; then
        name=`echo $log | sed -r 's/ issued server command: \/w @s ランキング参照//g' | rev | awk '{ print $1 }' | rev`
        screen -p 0 -S aziServer -X eval 'stuff "save-all\015"'
        sleep 1
        screen -p 0 -S aziServer -X eval 'stuff "tellraw '$name' ["'
        screen -p 0 -S aziServer -X stuff \"\",{\"text\":\"§b--------------------\"},
        screen -p 0 -S aziServer -X stuff {\"text\":\"§aスコアランキング\"},{\"text\":\"§b--------------------\"}]
        screen -p 0 -S aziServer -X eval 'stuff "\015"'
        #ファイルを読み込む
        python nbt_edit.py ./azi_server/data/scoreboard.dat 1,totalScoreXpl,t export > /dev/null
        text='./azi_server/data/export.txt'
        #区切り文字を改行に指定
        IFS=$'\n'
        file=(`cat "$text"`)
        ln=0
        rank=0
        for s in "${file[@]}"; do
            rank=$((rank += 1))
            text=`echo §l§8\#${rank} §r- §6${s/Name\:}`
            text=${text//Obj\:totalScoreXpl }
            text=${text// Score:/ §7Score:§c§o}
            if [ $rank -le 10 ]; then
                screen -p 0 -S aziServer -X eval 'stuff "tellraw '${name}' {"'
                if [ $rank -eq 1 ]; then
                    text=${text//§8\#${rank}/§4\#${rank}}
                    screen -p 0 -S aziServer -X stuff \"text\":\"${text}\"}\\015
                fi
                if [ $rank -eq 2 ]; then
                    text=${text//§8\#${rank}/§5\#${rank}}
                    screen -p 0 -S aziServer -X stuff \"text\":\"${text}\"}\\015
                fi
                if [ $rank -eq 3 ]; then
                    text=${text//§8\#${rank}/§9\#${rank}}
                    screen -p 0 -S aziServer -X stuff \"text\":\"${text}\"}\\015
                fi
                if [ $rank -ge 4 ]; then
                    screen -p 0 -S aziServer -X stuff \"text\":\"${text}\"}\\015
                fi
                if [ `echo $text|grep ${name}` ]; then
                    my=${text}
                fi
            fi
        done
        screen -p 0 -S aziServer -X eval 'stuff "tellraw '$name' {"'
        screen -p 0 -S aziServer -X stuff \"text\":\"§b----------------------------------------------------\"}\\015
        screen -p 0 -S aziServer -X eval 'stuff "tellraw '${name}' {"'
        screen -p 0 -S aziServer -X stuff \"text\":\"${my}\"}\\015
        screen -p 0 -S aziServer -X eval 'stuff "w @s a\015"'
        screen -p 0 -S aziServer -X eval 'stuff "w @s a\015"'
    fi
    sleep 1
done
#issued server command: /w @s ランキング参照
#sudo kill `ps aux | grep 'scoreget' | awk '{ print $2 }'`
