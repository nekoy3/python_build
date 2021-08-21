#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add sky dummy "§bSky wars"
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar sky

#ステージ構築アーマースタンドを場所へテレポートさせます
execute @e[tag=select,scores={sn=10},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ 39 ~

#ステージを構築
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e2.ステージを構築します"}]}
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 6 -125
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=13},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 7 -125
execute @e[tag=select,scores={sn=13},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=14},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 8 -125
execute @e[tag=select,scores={sn=14},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 9 -125
execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=16},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 10 -125
execute @e[tag=select,scores={sn=16},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=17},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 11 -125
execute @e[tag=select,scores={sn=17},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 12 -125
execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=19},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 13 -125
execute @e[tag=select,scores={sn=19},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=20},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 14 -125
execute @e[tag=select,scores={sn=20},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 15 -125
execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=22},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 16 -125
execute @e[tag=select,scores={sn=22},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=23},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 17 -125
execute @e[tag=select,scores={sn=23},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 18 -125
execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=25},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 19 -125
execute @e[tag=select,scores={sn=25},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=26},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 20 -125
execute @e[tag=select,scores={sn=26},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 21 -125
execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~


#ステージ構築2アーマースタンドを場所へテレポートさせます
execute @e[tag=select,scores={sn=10},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ 2 ~

execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 22 -125
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=13},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 23 -125
execute @e[tag=select,scores={sn=13},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=14},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 24 -125
execute @e[tag=select,scores={sn=14},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 25 -125
execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=16},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 26 -125
execute @e[tag=select,scores={sn=16},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=17},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 27 -125
execute @e[tag=select,scores={sn=17},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 28 -125
execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=19},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 29 -125
execute @e[tag=select,scores={sn=19},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=20},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 30 -125
execute @e[tag=select,scores={sn=20},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 31 -125
execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=22},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 32 -125
execute @e[tag=select,scores={sn=22},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=23},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 33 -125
execute @e[tag=select,scores={sn=23},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 34 -125
execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=25},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 35 -125
execute @e[tag=select,scores={sn=25},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=26},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 36 -125
execute @e[tag=select,scores={sn=26},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 37 -125
execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 38 -125
execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=28},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 39 -125
execute @e[tag=select,scores={sn=28},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=29},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 40 -125
execute @e[tag=select,scores={sn=29},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=30..},type=armor_stand] -30 3 -125 fill ~ ~ ~ ~50 ~ ~50 air

#####################################################################
#特殊効果設定
execute @e[tag=select,scores={sn=14},type=armor_stand] ~ ~ ~ scoreboard players set @s sp 0

execute @e[tag=select,scores={sn=14,sp=0},type=armor_stand] ~ ~ ~ scoreboard players random @s sp 1 80

execute @e[tag=select,scores={sn=14,sp=1..50},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e未設定§rです。"}]}

execute @e[tag=select,scores={sn=14,sp=51..60},type=armor_stand] ~ ~ ~ tag @e[tag=clear] add web_bp
execute @e[tag=select,scores={sn=14,sp=51..60},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e1/3 §rです。"}]}
execute @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] ~ ~ ~ tag @e[tag=clear] add lava_bp
execute @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e2/3 §rです。"}]}
execute @e[tag=select,scores={sn=14,sp=71..80},type=armor_stand] ~ ~ ~ tag @e[tag=clear] add bomb_bp
execute @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e3/3 §rです。"}]}

#特殊効果別本処理

#####################################################################
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ function sys.sarchplayer.azi
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players = sarchplayer sarchplayer
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players.red = s.red sarchplayer
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players.blue = s.blue sarchplayer
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players.purple = s.purple sarchplayer

execute @e[tag=select,scores={sn=16,players=0..1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cエラーが発生しました。player count condition error"}]}
execute @e[tag=select,scores={sn=16,players=0..1},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

#チームを決めます
execute @e[tag=select,scores={sn=16},type=armor_stand] -5 60 -98 function n.teamRBP

#####################################################################

#開始までの通知
execute @e[tag=select,scores={sn=20},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"開始までのカウントダウンを開始します"}]}
execute @e[tag=select,scores={sn=40},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a5 seconds..."}]}
execute @e[tag=select,scores={sn=40},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=60},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a4 seconds..."}]}
execute @e[tag=select,scores={sn=60},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=80},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a3 seconds..."}]}
execute @e[tag=select,scores={sn=80},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=100},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a2 seconds..."}]}
execute @e[tag=select,scores={sn=100},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=120},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§c1 §asecond"}]}
execute @e[tag=select,scores={sn=120},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§eStart!!!"}]}
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ playsound random.levelup @a

#プレイヤーをテレポート
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ spawnpoint @s -5 44 -98
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2,tag=purple] ~ ~ ~ tp @s 14 15 -119 45
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2,tag=blue] ~ ~ ~ tp @s -23 15 -119 315
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2,tag=red] ~ ~ ~ tp @s -6 15 -78 180

#死亡地点
execute @e[tag=select,scores={sn=140..},type=armor_stand] -5 43 -98 setblock ~ ~ ~ bedrock


#チームチェスト
execute @e[tag=select,scores={sn=140,players.purple=1..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.purple=1..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 13 15 -120
execute @e[tag=select,scores={sn=140,players.purple=1..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.purple=2..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.purple=2..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 13 16 -120
execute @e[tag=select,scores={sn=140,players.purple=2..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.purple=3..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.purple=3..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 13 17 -120
execute @e[tag=select,scores={sn=140,players.purple=3..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.purple=4..},type=armor_stand] ~ ~ ~ function azi/randomchest]
execute @e[tag=select,scores={sn=140,players.purple=4..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 13 18 -120
execute @e[tag=select,scores={sn=140,players.purple=4..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.purple=5..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.purple=5..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 13 19 -120
execute @e[tag=select,scores={sn=140,players.purple=5..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]

execute @e[tag=select,scores={sn=140,players.blue=1..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.blue=1..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -22 15 -122
execute @e[tag=select,scores={sn=140,players.blue=1..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.blue=2..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.blue=2..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -22 16 -122
execute @e[tag=select,scores={sn=140,players.blue=2..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.blue=3..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.blue=3..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -22 17 -122
execute @e[tag=select,scores={sn=140,players.blue=3..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.blue=4..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.blue=4..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -22 18 -122
execute @e[tag=select,scores={sn=140,players.blue=4..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.blue=5..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.blue=5..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -22 19 -122
execute @e[tag=select,scores={sn=140,players.blue=5..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]

execute @e[tag=select,scores={sn=140,players.red=1..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.red=1..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 15 -78
execute @e[tag=select,scores={sn=140,players.red=1..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.red=2..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.red=2..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 16 -78
execute @e[tag=select,scores={sn=140,players.red=2..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.red=3..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.red=3..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 17 -78
execute @e[tag=select,scores={sn=140,players.red=3..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.red=4..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.red=4..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 18 -78
execute @e[tag=select,scores={sn=140,players.red=4..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140,players.red=5..},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140,players.red=5..},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 19 -78
execute @e[tag=select,scores={sn=140,players.red=5..},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]

#中央チェスト
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 14 -105
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -7 14 -103
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 14 -101
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -3 14 -103
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]

execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 15 -104
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 15 -103
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -6 15 -103
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 15 -102
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]

#レア枠
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest.r
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest.r] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -3 30 -115
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest.r]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest.r
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest.r] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ 9 30 -84
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest.r]
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ function azi/randomchest.r
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest.r] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -23 28 -95
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest.r]

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#





#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#ゲーム本回路を起動
execute @e[tag=select,scores={sn=140..150},type=armor_stand] ~ ~ ~ scoreboard players set @s sn 1000
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s sn 1
#初期設定
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ gamerule pvp true
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=6,z=-125,dx=50,dy=100,dz=50] haste 1 1 true
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ gamemode s @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50]
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50] health 3

execute @e[tag=select,scores={sn=8001..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=6,z=-125,dx=50,dy=100,dz=50] strength 1 10 true
#周期的な中身復活
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 = @s sn
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 %= s2000 s2000
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 14 -105
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -7 14 -103
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 14 -101
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -3 14 -103
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]

execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 15 -104
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -4 15 -103
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -6 15 -103
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ function azi/randomchest
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ execute @e[tag=randomchest] ~ ~ ~ clone ~ ~-1 ~ ~ ~-1 ~ -5 15 -102
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ kill @e[tag=randomchest]
execute @e[tag=select,scores={sn2=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§b中央箱の中身が復活しました！！！"}]}

execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[name="不死のトーテム"] ~ ~ ~ scoreboard players add @p totem 1
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[name="不死のトーテム"] ~ ~ ~ execute @p ~ ~ ~ say §d不死のトーテムを投げて使用しhealthが1増えました
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[name="不死のトーテム"] ~ ~ ~ kill @s

#終了判定

#execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ tp @a[x=-30,y=4,z=-125,dx=50,dy=-100,dz=50] -5 44 -98
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ kill @a[x=-30,y=4,z=-125,dx=50,dy=-100,dz=50]
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @p[r=5,scores={health=1..}] ~ ~ ~ scoreboard players set @s death 1
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=1},tag=purple] ~ ~ ~ say §dpurple§eteam一人§c死亡しました。残り復活回数は§e1回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=2},tag=purple] ~ ~ ~ say §dpurple§eteam一人§c死亡しました。残り復活回数は§e2回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=3},tag=purple] ~ ~ ~ say §dpurple§eteam一人§c死亡しました。残り復活回数は§e3回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=4..},tag=purple] ~ ~ ~ say §dpurple§eteam一人§c死亡しました。残り復活回数は§e3+回§cです。

execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=1},tag=red] ~ ~ ~ say §cred§eteam一人§c死亡しました。残り復活回数は§e1回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=2},tag=red] ~ ~ ~ say §cred§eteam一人§c死亡しました。残り復活回数は§e2回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=3},tag=red] ~ ~ ~ say §cred§eteam一人§c死亡しました。残り復活回数は§e3回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=4..},tag=red] ~ ~ ~ say §cred§eteam一人§c死亡しました。残り復活回数は§e3+回§cです。

execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=1},tag=blue] ~ ~ ~ say §bblue§eteam一人§c死亡しました。残り復活回数は§e1回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=2},tag=blue] ~ ~ ~ say §bblue§eteam一人§c死亡しました。残り復活回数は§e2回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=3},tag=blue] ~ ~ ~ say §bblue§eteam一人§c死亡しました。残り復活回数は§e3回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=3+},tag=blue] ~ ~ ~ say §bblue§eteam一人§c死亡しました。残り復活回数は§e3+回§cです。

execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={death=1,health=1..}] ~ ~ ~ scoreboard players add @s health -1
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 tp @p[r=5,scores={health=1..},tag=purple] 14 15 -119 45
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 tp @p[r=5,scores={health=1..},tag=blue] -23 15 -119 315
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 tp @p[r=5,scores={health=1..},tag=red] -6 15 -78 180
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ scoreboard players set @a death 0
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ tp @a[scores={health=0}] 0 8 0
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={heath=0},tag=purple] ~ ~ ~ say §dPurpleチームプレイヤー§c脱落しました。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={heath=0},tag=red] ~ ~ ~ say §cRedチームプレイヤー§c脱落しました。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ execute @a[scores={heath=0},tag=blue] ~ ~ ~ say §bBlueチームプレイヤー§c脱落しました。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ gamemode a @a[scores={health=0}]
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] ~ ~ ~ scoreboard players reset @a[scores={health=0}] health



#終了処理
execute @e[tag=select,scores={sn=1200..,players.red=0,players.blue=0,players.purple=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
execute @e[tag=select,scores={sn=1200..,players.red=0,players.blue=0,players.purple=0},type=armor_stand] ~ ~ ~ setblock -76 248 -120 redstone_block                                                                             fffffffffffff

#redの勝利
execute @e[tag=select,scores={sn=1201..,players.red=1..,players.blue=0,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":" §eゲーム終了！！\n       §cRed §eチームが勝利しました！！！"}]}
execute @e[tag=select,scores={sn=1201..,players.red=1..,players.blue=0,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ xp 120l @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50]      fff
execute @e[tag=select,scores={sn=1201..,players.red=1..,players.blue=0,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
execute @e[tag=select,scores={sn=1200..,players.red=0,players.blue=0,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ setblock -76 248 -120 redstone_block
#blueの勝利
execute @e[tag=select,scores={sn=1201..,players.red=0,players.blue=1..,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":" §eゲーム終了！！\n       §bBlue §eチームが勝利しました！！！"}]}
execute @e[tag=select,scores={sn=1201..,players.red=0,players.blue=1..,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ xp 120l @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50]
execute @e[tag=select,scores={sn=1201..,players.red=0,players.blue=1..,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
execute @e[tag=select,scores={sn=1200..,players.red=0,players.blue=0,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ setblock -76 248 -120 redstone_block
#purpleの勝利
execute @e[tag=select,scores={sn=1201..,players.red=0,players.blue=0,players.purple=1..,sn3=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":" §eゲーム終了！！\n       §dPurple §eチームが勝利しました！！！"}]}
execute @e[tag=select,scores={sn=1201..,players.red=0,players.blue=0,players.purple=1..,sn3=0},type=armor_stand] ~ ~ ~ xp 120l @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50]
execute @e[tag=select,scores={sn=1201..,players.red=0,players.blue=0,players.purple=1..,sn3=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
execute @e[tag=select,scores={sn=1200..,players.red=0,players.blue=0,players.purple=0,sn3=0},type=armor_stand] ~ ~ ~ setblock -76 248 -120 redstone_block

execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn3 = @s sn
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn3 %= s20 s20
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#

scoreboard players operation "デバッガー-sn" sky = @e[tag=select,type=armor_stand] sn
scoreboard players operation "デバッガー-general" sky = @e[tag=select,type=armor_stand] game.management
scoreboard players operation "§eプレイヤー人数 §bblue" sky = @e[tag=select,type=armor_stand] players.blue
scoreboard players operation "§eプレイヤー人数 §cred" sky = @e[tag=select,type=armor_stand] players.red
scoreboard players operation "§eプレイヤー人数 §dpurple" sky = @e[tag=select,type=armor_stand] players.purple
execute @e[tag=select,type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar sky
scoreboard players set "---------------------" sky -30
scoreboard players set "ブロックやアイテムを採取、設置しながら" sky -31
scoreboard players set "他チームプレイヤーをせん滅してください" sky -32
scoreboard players set "最後に残ったチームが勝者となります。" sky -33



