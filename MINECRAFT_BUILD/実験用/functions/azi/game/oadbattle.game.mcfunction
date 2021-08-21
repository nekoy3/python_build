#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add oad dummy "§4OaD Battle"
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar oad

#ステージ構築アーマースタンドを場所へテレポートさせます
execute @e[tag=select,scores={sn=10},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ 67 ~

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

execute @e[tag=select,scores={sn=28},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 22 -125
execute @e[tag=select,scores={sn=28},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=29},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 23 -125
execute @e[tag=select,scores={sn=29},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 24 -125
execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=31},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 25 -125
execute @e[tag=select,scores={sn=32},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=33},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 26 -125
execute @e[tag=select,scores={sn=34},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=35},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 27 -125
execute @e[tag=select,scores={sn=35},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=36},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 28 -125
execute @e[tag=select,scores={sn=36},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=37},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 29 -125
execute @e[tag=select,scores={sn=37},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=38},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 30 -125
execute @e[tag=select,scores={sn=38},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=39},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 31 -125
execute @e[tag=select,scores={sn=39},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=40},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 32 -125
execute @e[tag=select,scores={sn=40},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=41},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 33 -125
execute @e[tag=select,scores={sn=41},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=42},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 34 -125
execute @e[tag=select,scores={sn=42},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=43},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 35 -125
execute @e[tag=select,scores={sn=43},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~
 
execute @e[tag=select,scores={sn=44},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 36 -125
execute @e[tag=select,scores={sn=44},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=45},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 37 -125
execute @e[tag=select,scores={sn=45},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=46},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 38 -125
execute @e[tag=select,scores={sn=46},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~
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

execute @e[tag=select,scores={sn=16,players=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cエラーが発生しました。player count condition error"}]}
execute @e[tag=select,scores={sn=16,players=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=16,players=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§eプレイヤーが一人しかいないので、テストモードとして稼働します。\n                      PvPが開始したときに終了します。"}]}
execute @e[tag=select,scores={sn=16,players=1},type=armor_stand] ~ ~ ~ tag @s add testmode

#チームを決めます
execute @e[tag=select,scores={sn=15},type=armor_stand] -5 60 -98 function n.teamRB

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
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2,tag=blue] ~ ~ ~ tp @s 15 26 -80
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2,tag=red] ~ ~ ~ tp @s -25 26 -120

#ゲーム本回路を起動
execute @e[tag=select,scores={sn=140..150},type=armor_stand] ~ ~ ~ scoreboard players set @s sn 1000
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#


#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#####メイン本回路 流れ制御
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s sn 1
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s game.management

execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=s] haste 1 2 true

#初期設定
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @s blue.core 30
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @s red.core 30

execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ spawnpoint @a[tag=blue] 15 26 -80
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ spawnpoint @a[tag=red] -25 26 -120

execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ gamemode s @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a]

execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§b２分後からコアが破壊できるようになるので資材を集めてください！\n§atips:鉄鉱石は最下層にあります。"}]}

execute @e[tag=select,scores={sn=3400},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e２分が経過したためコアが設置され破壊可能になりました。"}]}
execute @e[tag=select,scores={sn=3400},type=armor_stand] ~ ~ ~ setblock 16 26 -79 emerald_block
execute @e[tag=select,scores={sn=3400},type=armor_stand] ~ ~ ~ setblock -26 26 -121 emerald_block
execute @e[tag=select,scores={sn=3400},type=armor_stand] ~ ~ ~ gamerule pvp true

execute @e[tag=select,scores={sn=15400},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e7分が経過したためTNTが配布されました。"}]}
execute @e[tag=select,scores={sn=15400},type=armor_stand] ~ ~ ~ give @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=s] tnt 32767

##############################################################################################################################################################################
#コア破壊検知システム
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ summon armor_stand 16 100 -79
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ summon armor_stand -25 100 -120
execute @e[tag=select,scores={sn=3400..},type=armor_stand] 16 100 -79 tag @e[c=1,type=armor_stand] add blue.core
execute @e[tag=select,scores={sn=3400..},type=armor_stand] -25 100 -120 tag @e[c=1,type=armor_stand] add red.core

execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core] ~ ~ ~ scoreboard players set @s coretime 0
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core] ~ ~ ~ scoreboard players set @s coretime 0

execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core] ~ ~ ~ detect 16 26 -79 emerald_block 0 scoreboard players set @s coretime 1
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core] ~ ~ ~ detect -26 26 -121 emerald_block 0 scoreboard players set @s coretime 1

execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core,scores={coretime=!1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bBlue §eチームコアが破壊されました！！！！！"}]}
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core,scores={coretime=!1}] ~ ~ ~ scoreboard players add @e[tag=select,scores={sn=3400..},type=armor_stand] blue.core -1
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core,scores={coretime=!1}] ~ ~ ~ setblock 16 26 -79 emerald_block

execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core,scores={coretime=!1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§4Red §eチームコアが破壊されました！！！！！"}]}
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core,scores={coretime=!1}] ~ ~ ~ scoreboard players add @e[tag=select,scores={sn=3400..},type=armor_stand] red.core -1
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core,scores={coretime=!1}] ~ ~ ~ setblock -26 26 -121 emerald_block

execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core] ~ ~ ~ scoreboard players reset @s coretime
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core] ~ ~ ~ coreboard players reset @s coretime
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=blue.core] ~ ~ ~ setblock 16 26 -79 emerald_block
execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ execute @e[tag=red.core] ~ ~ ~ setblock -26 26 -121 emerald_block
execute @e[tag=select,scores={sn=3400..},type=armor_stand] 16 100 -79 kill @e[type=armor_stand,r=2]
execute @e[tag=select,scores={sn=3400..},type=armor_stand] -25 100 -120 kill @e[type=armor_stand,r=2]

execute @e[tag=select,scores={sn=3400..},type=armor_stand] ~ ~ ~ kill @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=item,name="エメラルドのブロック"]
##############################################################################################################################################################################

#終了処理
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bBlue §dチームが勝利しました！！！！！"}]}
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ xp 150l @a[tag=blue]
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ tag * remove blue
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ tag * remove red
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§bRed team win!!!"}]}
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ playsound random.levelup @a
execute @e[tag=select,scores={sn=3400..,red.core=..0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cRed §dチームが勝利しました！！！！！"}]}
execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ xp 150l @a[tag=red]
execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ tag * remove blue
execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ tag * remove red
execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§cRed team win!!!"}]}
execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ playsound random.levelup @a
execute @e[tag=select,scores={sn=3400..,blue.core=..0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=2200..},type=armor_stand,tag=testmode] ~ ~ ~ function azi/new.gameend.sytem

#制限時間経過

#木の一括破壊
execute @e[type=item,name="樫の丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 tp @s ~ ~0.2 ~ 
execute @e[type=item,name="樫の丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 fill ~ ~1 ~ ~ ~4 ~ air 0 destroy
execute @e[type=item,name="樫の丸太"] ~ ~ ~ detect ~1 ~ ~ leaves -1 fill ~3 ~-1 ~3 ~-3 ~5 ~-3 air 0 replace leaves -1

execute @e[type=item,name="樺の丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 tp @s ~ ~0.2 ~ 
execute @e[type=item,name="樺の丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 fill ~ ~1 ~ ~ ~4 ~ air 0 destroy
execute @e[type=item,name="樺の丸太"] ~ ~ ~ detect ~1 ~ ~ leaves -1 fill ~3 ~-1 ~3 ~-3 ~5 ~-3 air 0 replace leaves -1

execute @e[type=item,name="アカシアの丸太"] ~ ~ ~ detect ~ ~1 ~ log2 -1 execute @s ~ ~ ~ detect ~ ~2 ~ log2 -1 ~ ~0.2 ~ 
execute @e[type=item,name="アカシアの丸太"] ~ ~ ~ detect ~ ~1 ~ log2 -1 execute @s ~ ~ ~ detect ~ ~2 ~ log2 -1 fill ~ ~1 ~ ~ ~4 ~ air 0 destroy
execute @e[type=item,name="アカシアの丸太"] ~ ~ ~ detect ~1 ~ ~ leaves2 -1 fill ~3 ~-1 ~3 ~-3 ~5 ~-3 air 0 replace leaves2 -1

execute @e[type=item,name="トウヒの丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 ~ ~0.2 ~ 
execute @e[type=item,name="トウヒの丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 fill ~ ~1 ~ ~ ~4 ~ air 0 destroy
execute @e[type=item,name="トウヒの丸太"] ~ ~ ~ detect ~1 ~ ~ leaves -1 fill ~3 ~-1 ~3 ~-3 ~5 ~-3 air 0 replace leaves -1

execute @e[type=item,name="ジャングルの木の丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 ~ ~0.2 ~ 
execute @e[type=item,name="ジャングルの木の丸太"] ~ ~ ~ detect ~ ~1 ~ log -1 execute @s ~ ~ ~ detect ~ ~2 ~ log -1 fill ~ ~1 ~ ~ ~4 ~ air 0 destroy
execute @e[type=item,name="ジャングルの木の丸太"] ~ ~ ~ detect ~1 ~ ~ leaves -1 fill ~3 ~-1 ~3 ~-3 ~5 ~-3 air 0 replace leaves -1

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#

scoreboard players operation "§eプレイヤー人数" oadb = @e[tag=select,type=armor_stand] players
scoreboard players operation @e[tag=select,type=armor_stand] sn2 = @e[tag=select,type=armor_stand] sn
scoreboard players operation @e[tag=select,type=armor_stand] sn2 -= s1000 s1000
scoreboard players operation @e[tag=select,type=armor_stand] sn2 /= s20 s20
scoreboard players set s600 s600 600
scoreboard players operation s600 s600 -= @e[tag=select,type=armor_stand] sn2
execute @e[tag=select,scores={sn=1001..},type=armor_stand,tag=!testmode] ~ ~ ~ scoreboard players operation "§d残り時間(秒)" oadb = s600 s600
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation "§bBlue health" oadb = @e[tag=select,type=armor_stand] blue.core
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation "§cRed health" oadb = @e[tag=select,type=armor_stand] red.core

execute @e[tag=select,type=armor_stand,tag=!testmode] ~ ~ ~ scoreboard players reset "テストモードです。一分後終了します" oadb 
execute @e[tag=select,scores={sn=1001..},type=armor_stand,tag=testmode] ~ ~ ~ scoreboard players set "テストモードです。一分後終了します" oadb 777

#scoreboard players reset "" oadb

execute @e[tag=select,type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar oadb

scoreboard players set "---------------------" oadb -30
scoreboard players set "§cRed §rvs §bBlue §rチーム戦" oadb -32
scoreboard players set "二分経過するとコアが破壊可能" oadb -33
scoreboard players set "health値回破壊されたチームが負け" oadb -34
scoreboard players set "コアは城の中の§aエメラルドブロック" oadb -36
scoreboard players set "十分でhealthが多いほうの勝利 oadb -37
