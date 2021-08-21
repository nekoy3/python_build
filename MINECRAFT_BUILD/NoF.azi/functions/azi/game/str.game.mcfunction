#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add strun dummy "§aShuttle run"
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar strun

#ステージ構築アーマースタンドを場所へテレポートさせます
execute @e[tag=select,scores={sn=10},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ 223 ~

#ステージを構築
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e2.ステージを構築します"}]}
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 6 -125
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 7 -125
execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 8 -125
execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 9 -125
execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 10 -125
execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 11 -125
execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 12 -125
execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=33},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 13 -125
execute @e[tag=select,scores={sn=33},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=36},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 14 -125
execute @e[tag=select,scores={sn=36},type=armor_stand] ~ ~ ~ execute @e[tag=clone,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

#開始までの通知
execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"開始までのカウントダウンを開始します"}]}
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
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ tp @s -5 8 -125 0 0

#ゲーム本回路を起動
execute @e[tag=select,scores={sn=140..150},type=armor_stand] ~ ~ ~ scoreboard players set @s sn 1000
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#

#人数処理
execute @e[tag=select,scores={sn=10..},type=armor_stand] ~ ~ ~ function sys.sarchplayer.azi
execute @e[tag=select,scores={sn=10..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players = sarchplayer sarchplayer

execute @e[tag=select,scores={sn=10,players=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cエラーが発生しました。player count condition error"}]}
execute @e[tag=select,scores={sn=10,players=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#####メイン本回路 流れ制御
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s sn 1
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s game.management 

#制限時間設定
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @s timelimit 3000
execute @e[tag=select,scores={timelimit=0..},type=armor_stand] ~ ~ ~ scoreboard players add @s timelimit -1

##################################################
#特殊処理
#秒間隔実行
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 = @s sn
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 %= s20 s20
#プレーヤーがゴール
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a ~ ~ ~ detect ~ 7 ~ diamond_block 0 tag @s add ststst
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[tag=ststst] ~ ~ ~ say §eシャトルランゴール！次のコースへ向かいます。
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[tag=ststst] ~ ~ ~ scoreboard players add @s st.c 1
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[tag=ststst] ~ ~ ~ scoreboard players random @s st.ra 1 4

#かぶり防止
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=1,st.ra=1] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=2,st.ra=2] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=3,st.ra=3] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=4,st.ra=4] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=1,st.ra=1] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=2,st.ra=2] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=3,st.ra=3] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=4,st.ra=4] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=1,st.ra=1] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=2,st.ra=2] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=3,st.ra=3] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=4,st.ra=4] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[tag=ststst] ~ ~ ~ scoreboard players operation @s st.memory = @s st.ra
#プレイヤーをランダムコーステレポート
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=1}] ~ ~ ~ tp @s[tag=ststst] -26 9 -125 0 0
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=2}] ~ ~ ~ tp @s[tag=ststst] -17 9 -125 0 0
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=3}] ~ ~ ~ tp @s[tag=ststst] 7 9 -125 0 0
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=4}] ~ ~ ~ tp @s[tag=ststst] 16 9 -125 0 0
#ランダム決定用スコアをリセット
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=1..4},tag=ststst] ~ ~ ~ scoreboard players reset @s st.ra
tag * remove ststst
##################################################
#秒間隔実行-コースパスアイテム
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 = @s sn
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 %= s600 s600

execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§o§b30秒おきに配布されるコーススキップアイテムを配布しました。\n§lストックはできません\n§c真上に投げないと効果は発揮しません。"}]}
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ clear @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50] snowball
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ replaceitem entity @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50] slot.weapon.mainhand 0 snowball 1

execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @e[type=snowball,x=-30,y=6,z=-125,dx=50,dy=10,dz=50] ~ ~ ~ execute @p ~ ~ ~ scoreboard players random @s st.ra 1 4
#かぶり防止
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=1,st.ra=1] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=2,st.ra=2] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=3,st.ra=3] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=4,st.ra=4] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=1,st.ra=1] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=2,st.ra=2] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=3,st.ra=3] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=4,st.ra=4] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=1,st.ra=1] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=2,st.ra=2] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=3,st.ra=3] ~ ~ ~ scoreboard players random @s st.ra 1 4
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.memory=4,st.ra=4] ~ ~ ~ scoreboard players random @s st.ra 1 4

execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=1}] ~ ~ ~ tp @s -26 9 -125 0 0
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=2}] ~ ~ ~ tp @s -17 9 -125 0 0
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=3}] ~ ~ ~ tp @s 7 9 -125 0 0
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[scores={st.ra=4}] ~ ~ ~ tp @s 16 9 -125 0 0
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @e[type=snowball,x=-30,y=6,z=-125,dx=50,dy=10,dz=50] ~ ~ ~ execute @p ~ ~ ~ say §b今やっているシャトルランを飛ばしました。
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50] ~ ~ ~ execute @p ~ ~ ~ scoreboard players reset @s st.ra
tag * remove ststst
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @e[type=snowball,x=-30,y=6,z=-125,dx=50,dy=10,dz=50] ~ ~ ~ kill @s

execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間に達しました。計算中..."}]}
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=0}] ~ ~ ~ say §b私のゴール回数は[null]です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=1}] ~ ~ ~ say §b私のゴール回数は1回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=2}] ~ ~ ~ say §b私のゴール回数は2回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=3}] ~ ~ ~ say §b私のゴール回数は3回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=4}] ~ ~ ~ say §b私のゴール回数は4回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=5}] ~ ~ ~ say §b私のゴール回数は5回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=6}] ~ ~ ~ say §b私のゴール回数は6回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=7}] ~ ~ ~ say §b私のゴール回数は7回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=8}] ~ ~ ~ say §b私のゴール回数は8回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=9}] ~ ~ ~ say §b私のゴール回数は9回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=10}] ~ ~ ~ say §b私のゴール回数は10回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=11}] ~ ~ ~ say §b私のゴール回数は11回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=12}] ~ ~ ~ say §b私のゴール回数は12回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=13}] ~ ~ ~ say §b私のゴール回数は13回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=14}] ~ ~ ~ say §b私のゴール回数は14回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=15}] ~ ~ ~ say §b私のゴール回数は15回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=16}] ~ ~ ~ say §b私のゴール回数は16回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=17}] ~ ~ ~ say §b私のゴール回数は17回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=18}] ~ ~ ~ say §b私のゴール回数は18回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=19}] ~ ~ ~ say §b私のゴール回数は19回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=20}] ~ ~ ~ say §b私のゴール回数は20回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=21}] ~ ~ ~ say §b私のゴール回数は21回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=22}] ~ ~ ~ say §b私のゴール回数は22回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=23}] ~ ~ ~ say §b私のゴール回数は23回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=24}] ~ ~ ~ say §b私のゴール回数は24回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=25}] ~ ~ ~ say §b私のゴール回数は25回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=26}] ~ ~ ~ say §b私のゴール回数は26回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=27}] ~ ~ ~ say §b私のゴール回数は27回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=28}] ~ ~ ~ say §b私のゴール回数は28回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=29}] ~ ~ ~ say §b私のゴール回数は29回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=30}] ~ ~ ~ say §b私のゴール回数は30回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=31}] ~ ~ ~ say §b私のゴール回数は31回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=32}] ~ ~ ~ say §b私のゴール回数は32回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=33}] ~ ~ ~ say §b私のゴール回数は33回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=34}] ~ ~ ~ say §b私のゴール回数は34回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=35}] ~ ~ ~ say §b私のゴール回数は35回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=36}] ~ ~ ~ say §b私のゴール回数は36回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=37}] ~ ~ ~ say §b私のゴール回数は37回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=38}] ~ ~ ~ say §b私のゴール回数は38回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=39}] ~ ~ ~ say §b私のゴール回数は39回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=40}] ~ ~ ~ say §b私のゴール回数は40回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=41}] ~ ~ ~ say §b私のゴール回数は41回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=42}] ~ ~ ~ say §b私のゴール回数は42回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=43}] ~ ~ ~ say §b私のゴール回数は43回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=44}] ~ ~ ~ say §b私のゴール回数は44回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=45}] ~ ~ ~ say §b私のゴール回数は45回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=46}] ~ ~ ~ say §b私のゴール回数は46回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=47}] ~ ~ ~ say §b私のゴール回数は47回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=48}] ~ ~ ~ say §b私のゴール回数は48回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=49}] ~ ~ ~ say §b私のゴール回数は49回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=50}] ~ ~ ~ say §b私のゴール回数は50回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=51}] ~ ~ ~ say §b私のゴール回数は51回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=52}] ~ ~ ~ say §b私のゴール回数は52回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=53}] ~ ~ ~ say §b私のゴール回数は53回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=54}] ~ ~ ~ say §b私のゴール回数は54回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=55}] ~ ~ ~ say §b私のゴール回数は55回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=56}] ~ ~ ~ say §b私のゴール回数は56回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=57}] ~ ~ ~ say §b私のゴール回数は57回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=58}] ~ ~ ~ say §b私のゴール回数は58回です。
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a[scores={st.c=59..}] ~ ~ ~ say §b私のゴール回数は59回以上です。


execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ execute @a ~ ~ ~ scoreboard players operation @e[tag=select,type=armor_stand] st.c += @s st.c
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players operation @s st.c /= @s players

execute @e[tag=select,scores={timelimit=0,st.c=0},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は[null]です。
execute @e[tag=select,scores={timelimit=0,st.c=1},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は1回です。
execute @e[tag=select,scores={timelimit=0,st.c=2},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は2回です。
execute @e[tag=select,scores={timelimit=0,st.c=3},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は3回です。
execute @e[tag=select,scores={timelimit=0,st.c=4},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は4回です。
execute @e[tag=select,scores={timelimit=0,st.c=5},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は5回です。
execute @e[tag=select,scores={timelimit=0,st.c=6},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は6回です。
execute @e[tag=select,scores={timelimit=0,st.c=7},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は7回です。
execute @e[tag=select,scores={timelimit=0,st.c=8},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は8回です。
execute @e[tag=select,scores={timelimit=0,st.c=9},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は9回です。
execute @e[tag=select,scores={timelimit=0,st.c=10},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は10回です。
execute @e[tag=select,scores={timelimit=0,st.c=11},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は11回です。
execute @e[tag=select,scores={timelimit=0,st.c=12},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は12回です。
execute @e[tag=select,scores={timelimit=0,st.c=13},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は13回です。
execute @e[tag=select,scores={timelimit=0,st.c=14},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は14回です。
execute @e[tag=select,scores={timelimit=0,st.c=15},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は15回です。
execute @e[tag=select,scores={timelimit=0,st.c=16},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は16回です。
execute @e[tag=select,scores={timelimit=0,st.c=17},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は17回です。
execute @e[tag=select,scores={timelimit=0,st.c=18},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は18回です。
execute @e[tag=select,scores={timelimit=0,st.c=19},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は19回です。
execute @e[tag=select,scores={timelimit=0,st.c=20},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は20回です。
execute @e[tag=select,scores={timelimit=0,st.c=21},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は21回です。
execute @e[tag=select,scores={timelimit=0,st.c=22},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は22回です。
execute @e[tag=select,scores={timelimit=0,st.c=23},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は23回です。
execute @e[tag=select,scores={timelimit=0,st.c=24},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は24回です。
execute @e[tag=select,scores={timelimit=0,st.c=25},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は25回です。
execute @e[tag=select,scores={timelimit=0,st.c=26},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は26回です。
execute @e[tag=select,scores={timelimit=0,st.c=27},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は27回です。
execute @e[tag=select,scores={timelimit=0,st.c=28},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は28回です。
execute @e[tag=select,scores={timelimit=0,st.c=29},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は29回です。
execute @e[tag=select,scores={timelimit=0,st.c=30},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は30回です。
execute @e[tag=select,scores={timelimit=0,st.c=31},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は31回です。
execute @e[tag=select,scores={timelimit=0,st.c=32},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は32回です。
execute @e[tag=select,scores={timelimit=0,st.c=33},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は33回です。
execute @e[tag=select,scores={timelimit=0,st.c=34},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は34回です。
execute @e[tag=select,scores={timelimit=0,st.c=35},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は35回です。
execute @e[tag=select,scores={timelimit=0,st.c=36},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は36回です。
execute @e[tag=select,scores={timelimit=0,st.c=37},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は37回です。
execute @e[tag=select,scores={timelimit=0,st.c=38},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は38回です。
execute @e[tag=select,scores={timelimit=0,st.c=39},type=armor_stand] ~ ~ ~ say §d今回のプレイヤー平均ゴール回数は39回です。


execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ xp 10l @a[scores={st.c=0..}]
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={st.c=0..}] st.c -1

execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players reset * st.c
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

##################################################

##################################################                                   

scoreboard players operation "デバッガー-sn" strun = @e[tag=select,type=armor_stand] sn
scoreboard players operation "デバッガー-sn2" strun = @e[tag=select,type=armor_stand] sn2
scoreboard players operation "デバッガー-generaltime" strun = @e[tag=select,type=armor_stand] game.management
scoreboard players operation "§bプレイヤー人数" strun = @e[tag=select,type=armor_stand] players
scoreboard players operation "§d制限時間(tick)" strun = @e[tag=select,type=armor_stand] timelimit
scoreboard players operation @e[tag=select,type=armor_stand] tl2 = @e[tag=select,type=armor_stand] timelimit
scoreboard players operation @e[tag=select,type=armor_stand] tl2 /= s20 s20
scoreboard players operation "§d制限時間(second)" strun = @e[tag=select,type=armor_stand] tl2

execute @e[tag=select,type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar strun
scoreboard players set "---------------------" strun -30
scoreboard players set "アスレチックのシャトルランです" strun -31
scoreboard players set "§1ラピスブロック§rからゴールの§bダイヤブロック§rまで" strun -32
scoreboard players set "アスレを抜けていってください。" strun -33
scoreboard players set "ゴールごとに別のコースへランダムに移動します" strun -34
scoreboard players set "ゴール回数が一番多いプレイヤーの勝利です" strun -35

execute @e[tag=select,type=armor_stand,scores={timelimit=60}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり3秒"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=60}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=100}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり5秒"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=100}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり10秒"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=200}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり30秒"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=600}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=1200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり1分"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=1200}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=2400}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり2分"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=2400}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=3600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり3分"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=3600}] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,type=armor_stand,scores={timelimit=4800}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり4分"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=4800}] ~ ~ ~ playsound random.orb @a