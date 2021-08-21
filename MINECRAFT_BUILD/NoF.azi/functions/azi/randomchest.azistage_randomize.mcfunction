#開始
summon armor_stand ~ ~ ~
tag @e[type=armor_stand,c=1,tag=!select,tag=!clear,tag=!clone] add randomchest
scoreboard players random @e[tag=randomchest] chestrandom 1 27
#一列目
tp @e[tag=randomchest,scores={chestrandom=1}] -46 249 -118
tp @e[tag=randomchest,scores={chestrandom=2}] -47 249 -118
tp @e[tag=randomchest,scores={chestrandom=3}] -48 249 -118
tp @e[tag=randomchest,scores={chestrandom=4}] -49 249 -118
tp @e[tag=randomchest,scores={chestrandom=5}] -50 249 -118
tp @e[tag=randomchest,scores={chestrandom=6}] -51 249 -118
tp @e[tag=randomchest,scores={chestrandom=7}] -52 249 -118
tp @e[tag=randomchest,scores={chestrandom=8}] -53 249 -118
tp @e[tag=randomchest,scores={chestrandom=9}] -54 249 -118
#二列目
tp @e[tag=randomchest,scores={chestrandom=10}] -46 249 -117
tp @e[tag=randomchest,scores={chestrandom=11}] -47 249 -117
tp @e[tag=randomchest,scores={chestrandom=12}] -48 249 -117
tp @e[tag=randomchest,scores={chestrandom=13}] -49 249 -117
tp @e[tag=randomchest,scores={chestrandom=14}] -50 249 -117
tp @e[tag=randomchest,scores={chestrandom=15}] -51 249 -117
tp @e[tag=randomchest,scores={chestrandom=16}] -52 249 -117
tp @e[tag=randomchest,scores={chestrandom=17}] -53 249 -117
tp @e[tag=randomchest,scores={chestrandom=18}] -54 249 -117
#三列目
tp @e[tag=randomchest,scores={chestrandom=19}] -46 249 -116
tp @e[tag=randomchest,scores={chestrandom=20}] -47 249 -116
tp @e[tag=randomchest,scores={chestrandom=21}] -48 249 -116
tp @e[tag=randomchest,scores={chestrandom=22}] -49 249 -116
tp @e[tag=randomchest,scores={chestrandom=23}] -50 249 -116
tp @e[tag=randomchest,scores={chestrandom=24}] -51 249 -116
tp @e[tag=randomchest,scores={chestrandom=25}] -52 249 -116
tp @e[tag=randomchest,scores={chestrandom=26}] -53 249 -116
tp @e[tag=randomchest,scores={chestrandom=27}] -54 249 -116

execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -60 249 -114
kill @e[tag=randomchest]

#functionを実行したら一回するたびに
#execute @e[拡散したアマスタ,c=1] ~ ~ ~ clone -60 249 -114 -60 249 -114 ~ ~-1 ~ 
#kill @e[拡散したアマスタ]
#を実行してください。