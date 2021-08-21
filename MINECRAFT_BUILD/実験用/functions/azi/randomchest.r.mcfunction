#開始
summon armor_stand ~ ~ ~
tag @e[type=armor_stand,c=1,tag=!select,tag=!clear,tag=!clone] add randomchest.r
scoreboard players random @e[tag=randomchest.r] chestrandom 1 9
#一列目
tp @e[tag=randomchest.r,scores={chestrandom=1}] -46 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=2}] -47 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=3}] -48 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=4}] -49 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=5}] -50 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=6}] -51 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=7}] -52 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=8}] -53 249 -110
tp @e[tag=randomchest.r,scores={chestrandom=9}] -54 249 -110

#見返りとしてランダムでチェストの上にアマスタを召喚するので、execute @e[tag=randomchest.r] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 座標　で欄無チェスト機構を構築します。アマスタはclone後にキルしてください