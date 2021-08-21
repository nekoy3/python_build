#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add atrun dummy "§1Athletic Race"
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar atrun

#ステージ構築アーマースタンドを場所へテレポートさせます
execute @e[tag=select,scores={sn=10},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ 22 ~

#ステージを構築
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e2.ステージを構築します"}]}
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 6 -125
execute @e[tag=select,scores={sn=12},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 7 -125
execute @e[tag=select,scores={sn=15},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 8 -125
execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 9 -125
execute @e[tag=select,scores={sn=21},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 10 -125
execute @e[tag=select,scores={sn=24},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 11 -125
execute @e[tag=select,scores={sn=27},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 12 -125
execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=33},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 13 -125
execute @e[tag=select,scores={sn=33},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=36},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 14 -125
execute @e[tag=select,scores={sn=36},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=39},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 15 -125
execute @e[tag=select,scores={sn=39},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=42},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 16 -125
execute @e[tag=select,scores={sn=42},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=45},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 17 -125
execute @e[tag=select,scores={sn=45},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=48},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 18 -125
execute @e[tag=select,scores={sn=48},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=51},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 19 -125
execute @e[tag=select,scores={sn=51},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~

execute @e[tag=select,scores={sn=54},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ clone ~50 ~ ~50 ~ ~ ~ -30 20 -125
execute @e[tag=select,scores={sn=54},type=armor_stand] ~ ~ ~ execute @e[tag=clone2,c=1,type=armor_stand] ~ ~ ~ tp @s ~ ~1 ~
#開始までの通知
execute @e[tag=select,scores={sn=30},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e<<Athletic Race>>\n§eこのゲームは、アスレチックステージが出現します。\n他のプレイヤーより早くゴールした者が勝利です。\n卵を投げると\n\nステージ上から落ちずに長い時間生き残った人が勝利です。\n特殊効果や、時間経過での制限時間短縮、妨害などがあるので注意。"}]}

execute @e[tag=select,scores={sn=150},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"開始までのカウントダウンを開始します"}]}
execute @e[tag=select,scores={sn=200},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a5 seconds..."}]}
execute @e[tag=select,scores={sn=200},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=220},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a4 seconds..."}]}
execute @e[tag=select,scores={sn=220},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=240},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a3 seconds..."}]}
execute @e[tag=select,scores={sn=240},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=260},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§a2 seconds..."}]}
execute @e[tag=select,scores={sn=260},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=280},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§c1 §asecond"}]}
execute @e[tag=select,scores={sn=280},type=armor_stand] ~ ~ ~ playsound random.orb @a
execute @e[tag=select,scores={sn=300},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"§eStart!!!"}]}
execute @e[tag=select,scores={sn=300},type=armor_stand] ~ ~ ~ playsound random.levelup @a

#プレイヤーをテレポート
execute @e[tag=select,scores={sn=300},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ tp @s 1 7 -95

#ゲーム本回路を起動
execute @e[tag=select,scores={sn=300},type=armor_stand] ~ ~ ~ scoreboard players set @s sn 1000
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
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @s timelimit 6050
execute @e[tag=select,scores={timelimit=0..},type=armor_stand] ~ ~ ~ scoreboard players add @s timelimit -1

execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ scoreboard players reset * st.c
execute @e[tag=select,scores={timelimit=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

#スポーン地点設置
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 = @s sn 
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 %= s5 s5
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=8,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ detect ~ ~-1 ~ iron_block 0 spawnpoint @s ~ ~1 ~

#卵配置
execute @e[tag=select,scores={sn=1000..,sn2=0},type=armor_stand] ~ ~ ~ replaceitem entity @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] slot.hotbar 3 egg 1

#卵処理
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=6,z=-125,dx=50,dy=1000,dz=50,type=egg] ~ ~ ~ execute @p ~ ~ ~ kill @s
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ kill @e[x=-30,y=6,z=-125,dx=50,dy=1000,dz=50,type=egg]

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#                                  

scoreboard players operation "デバッガー-sn" atrun = @e[tag=select,type=armor_stand] sn
scoreboard players operation "デバッガー-generaltime" atrun = @e[tag=select,type=armor_stand] game.management
scoreboard players operation "§bプレイヤー人数" atrun = @e[tag=select,type=armor_stand] players
scoreboard players operation "§d制限時間(tick)" atrun = @e[tag=select,type=armor_stand] timelimit
scoreboard players operation @e[tag=select,type=armor_stand] tl2 = @e[tag=select,type=armor_stand] timelimit
scoreboard players operation @e[tag=select,type=armor_stand] tl2 /= s20 s20
scoreboard players operation "§d制限時間(second)" atrun = @e[tag=select,type=armor_stand] tl2

execute @e[tag=select,type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar atrun
scoreboard players set "---------------------" atrun -30
scoreboard players set "アスレチックのシャトルランです" atrun -31
scoreboard players set "§1ラピスブロック§rからゴールの§bダイヤブロック§rまで" atrun -32
scoreboard players set "アスレを抜けていってください。" atrun -33
scoreboard players set "ゴールごとに別のコースへランダムに移動します" atrun -34
scoreboard players set "ゴール回数が一番多いプレイヤーの勝利です" atrun -35

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
execute @e[tag=select,type=armor_stand,scores={timelimit=6000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c制限時間のこり5分"}]}
execute @e[tag=select,type=armor_stand,scores={timelimit=6000}] ~ ~ ~ playsound random.orb @a