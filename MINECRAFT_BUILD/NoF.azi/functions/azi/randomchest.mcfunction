#開始
summon armor_stand ~ ~ ~
tag @e[type=armor_stand,c=1,tag=!select,tag=!clear,tag=!clone] add randomchest
scoreboard players random @e[tag=randomchest] chestrandom 1 27
#一列目
tp @e[tag=randomchest,scores={chestrandom=1}] -46 249 -114
tp @e[tag=randomchest,scores={chestrandom=2}] -47 249 -114
tp @e[tag=randomchest,scores={chestrandom=3}] -48 249 -114
tp @e[tag=randomchest,scores={chestrandom=4}] -49 249 -114
tp @e[tag=randomchest,scores={chestrandom=5}] -50 249 -114
tp @e[tag=randomchest,scores={chestrandom=6}] -51 249 -114
tp @e[tag=randomchest,scores={chestrandom=7}] -52 249 -114
tp @e[tag=randomchest,scores={chestrandom=8}] -53 249 -114
tp @e[tag=randomchest,scores={chestrandom=9}] -54 249 -114
#二列目
tp @e[tag=randomchest,scores={chestrandom=10}] -46 249 -113
tp @e[tag=randomchest,scores={chestrandom=11}] -47 249 -113
tp @e[tag=randomchest,scores={chestrandom=12}] -48 249 -113
tp @e[tag=randomchest,scores={chestrandom=13}] -49 249 -113
tp @e[tag=randomchest,scores={chestrandom=14}] -50 249 -113
tp @e[tag=randomchest,scores={chestrandom=15}] -51 249 -113
tp @e[tag=randomchest,scores={chestrandom=16}] -52 249 -113
tp @e[tag=randomchest,scores={chestrandom=17}] -53 249 -113
tp @e[tag=randomchest,scores={chestrandom=18}] -54 249 -113
#三列目
tp @e[tag=randomchest,scores={chestrandom=19}] -46 249 -112
tp @e[tag=randomchest,scores={chestrandom=20}] -47 249 -112
tp @e[tag=randomchest,scores={chestrandom=21}] -48 249 -112
tp @e[tag=randomchest,scores={chestrandom=22}] -49 249 -112
tp @e[tag=randomchest,scores={chestrandom=23}] -50 249 -112
tp @e[tag=randomchest,scores={chestrandom=24}] -51 249 -112
tp @e[tag=randomchest,scores={chestrandom=25}] -52 249 -112
tp @e[tag=randomchest,scores={chestrandom=26}] -53 249 -112
tp @e[tag=randomchest,scores={chestrandom=27}] -54 249 -112

#見返りとしてランダムでチェストの上にアマスタを召喚するので、execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 座標　で欄無チェスト機構を構築します。アマスタはclone後にキルしてください
