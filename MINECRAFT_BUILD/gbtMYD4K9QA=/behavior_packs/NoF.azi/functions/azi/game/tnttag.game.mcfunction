#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add tnttag dummy "§cTNT tag"
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar tnttag

#ステージを構築 パターン1/2/3/4  ※外部
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ setblock -78 249 -98 redstone_block

#####################################################################
#特殊効果設定
execute @e[tag=select,scores={sn=14},type=armor_stand] ~ ~ ~ scoreboard players set @s sp 0

execute @e[tag=select,scores={sn=14,sp=0},type=armor_stand] ~ ~ ~ scoreboard players random @s sp 1 80

execute @e[tag=select,scores={sn=14,sp=1..50},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e未設定§rです。"}]}

execute @e[tag=select,scores={sn=14,sp=51..60},type=armor_stand] ~ ~ ~ tag @e[tag=clear] add bdn_bp
execute @e[tag=select,scores={sn=14,sp=51..60},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e1/3 ザ・ワールド§rです。"}]}
execute @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] ~ ~ ~ tag @e[tag=clear] add jp_bp
execute @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e2/3 ジャンプ力上昇§rです。"}]}
execute @e[tag=select,scores={sn=14,sp=71..80},type=armor_stand] ~ ~ ~ tag @e[tag=clear] add bomb
execute @e[tag=select,scores={sn=14,sp=71..80},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e3/3 爆発雪玉配布§rです。"}]}

#特殊効果別本処理
#bdn_bp-一定時間ごとに移動速度低下
execute @e[tag=bdn_bp] ~ ~ ~ scoreboard players add @s slownesstime 1
execute @e[tag=bdn_bp] ~ ~ ~ scoreboard players operation @s sl_sum = @s slownesstime
execute @e[tag=bdn_bp] ~ ~ ~ scoreboard players operation @s sl_sum %= s300 s300
execute @e[tag=bdn_bp,scores={sl_sum=0}] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] slowness 2 255 true
execute @e[tag=bdn_bp,scores={sl_sum=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bザ・ワールド！！！！！"}]}
execute @e[tag=bdn_bp,scores={sl_sum=0}] ~ ~ ~ execute @a ~ ~ ~ playsound random.levelup @s ~ ~ ~ 1.0 0.25 1
execute @e[tag=bdn_bp,scores={sl_sum=0}] ~ ~ ~ execute @a ~ ~ ~ playsound random.explode @s ~ ~ ~ 1.0 0.2 1

#jp_bp
execute @e[tag=jp_bp] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] jump_boost 1 10 true
 
#bomb-爆発雪玉を一定時間ごとに配布
execute @e[tag=bomb] ~ ~ ~ scoreboard players add @s tnttagbombtime 1
execute @e[tag=bomb] ~ ~ ~ scoreboard players operation @s ttbt_sum = @s tnttagbombtime
execute @e[tag=bomb] ~ ~ ~ scoreboard players operation @s ttbt_sum %= s100 s100
execute @e[tag=bomb,scores={ttbt_sum=0}] ~ ~ ~ clear @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] snowball
execute @e[tag=bomb,scores={ttbt_sum=0}] ~ ~ ~ give @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] snowball

execute @e[tag=bomb] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=snowball] ~ ~ ~ scoreboard players add @s snowball 1
execute @e[tag=bomb] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=snowball,scores={snowball=1}] ~ ~ ~ summon tnt ~ ~ ~
execute @e[tag=bomb] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=snowball,scores={snowball=2..}] ~ ~ ~ tp @e[c=1,type=tnt] ~ ~ ~
#####################################################################
#鬼を決めます
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ function sys.sarchplayer.azi
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players = sarchplayer sarchplayer

execute @e[tag=select,scores={sn=18,players=0..1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cエラーが発生しました。player count condition error"}]}
execute @e[tag=select,scores={sn=18,players=0..1},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=18,players=1..},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={sn=18,players=1..},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] add oni
execute @e[tag=select,scores={sn=18,players=5..},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=!oni] add oni
#鬼通知
execute @e[tag=select,scores={sn=18},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ say §b私が鬼です！！
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
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ tp @s ~ 15 ~

#ゲーム本回路を起動
execute @e[tag=select,scores={sn=140..150},type=armor_stand] ~ ~ ~ scoreboard players set @s sn 1000
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#


#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#####メイン本回路 流れ制御
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s sn 1
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s game.management 

execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] resistance 1 255 true
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] fire_resistance 1 255 true
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] speed 1 4 true
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ effect @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=oni] speed 1 6 true
###フェーズ初期設定
#フェーズ初期値設定
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @s phase 777
###フェーズ中処理
#フェーズ減算
execute @e[tag=select,scores={phase=-49..},type=armor_stand] ~ ~ ~ scoreboard players add @s phase -1
#鬼への処理
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @e[tag=oni] ~ ~ ~ kill @e[r=3,type=tnt,c=1]
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @e[tag=oni] ~ ~ ~ summon tnt ~ ~0.25 ~
###フェーズ終了時処理
execute @e[tag=select,scores={phase=0},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ summon ender_crystal ~ ~ ~
execute @e[tag=select,scores={phase=0},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ summon arrow ~ ~0.5 ~
execute @e[tag=select,scores={phase=0},type=armor_stand] ~ ~ ~ tp @a[tag=oni] 0 8 0
execute @e[tag=select,scores={phase=0},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={phase=0},type=armor_stand] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"New Phase..."}]}
execute @e[tag=select,scores={phase=-50},type=armor_stand] ~ ~ ~ scoreboard players set @s phase 500
execute @e[tag=select,scores={phase=-49},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] add oni


###############################################################################################################
#鬼が実行するメイン処理
#前提処理
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ scoreboard players add @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,c=1] oni 0

#鬼が擦り付ける相手にoniを加算 ----------------アイドル鬼が擦り付ける相手のoniスコアを1加算
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ execute @a[tag=oni,scores={oni=0}] ~ ~1 ~ scoreboard players add @a[r=1.75,scores={oni=0},c=1,tag=!oni] oni 1

#加算した奴は引き続き加算 ---------------------oniスコアを加算
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ scoreboard players add @a[scores={oni=1..}] oni 1

#加算値2に来たら最寄りの鬼からタグをはく奪-----
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ execute @a[tag=!oni,scores={oni=2}] ~ ~ ~ tag @p[tag=oni] remove oni

#鬼になったやつに雷
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ execute @a[tag=!oni,scores={oni=2}] ~ ~ ~ summon lightning_bolt

#雷と一緒に鬼になる
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ execute @a[tag=!oni,scores={oni=2}] ~ ~ ~ tag @s add oni

#鬼値をリセット
execute @e[tag=select,scores={phase=..740,sn=1200..},type=armor_stand] ~ ~ ~ scoreboard players set @a[scores={oni=30..}] oni 0

#鬼パーティクル
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ particle minecraft:balloon_gas_particle ~1.7 ~0.5 ~
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ particle minecraft:balloon_gas_particle ~-1.7 ~0.5 ~
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~0.5 ~1.7
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~0.5 ~-1.7
###############################################################################################################

#終了処理
execute @e[tag=select,scores={sn=1000..,players=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,c=1] ~ ~ ~ say §b勝利しました！！！
execute @e[tag=select,scores={sn=1000..,players=1},type=armor_stand] ~ ~ ~ xp 175l @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,c=1]
execute @e[tag=select,scores={sn=1000..,players=1},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={sn=1000..,players=1},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=1000..,players=0},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={sn=1000..,players=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
#通知
execute @e[tag=select,scores={phase=..250},type=armor_stand] ~ ~ ~

tag @a[x=0,y=8,z=0,r=10] remove oni

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#

scoreboard players operation "デバッガー-sn" tnttag = @e[tag=select,type=armor_stand] sn
scoreboard players operation "デバッガー-general" tnttag = @e[tag=select,type=armor_stand] game.management
scoreboard players operation "§bプレイヤー人数" tnttag = @e[tag=select,type=armor_stand] players
scoreboard players operation "§dPhase" tnttag = @e[tag=select,type=armor_stand] phase
execute @e[tag=select,type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar tnttag
scoreboard players set "---------------------" tnttag -30
scoreboard players set "一人鬼がスタート時にきめられます" tnttag -31
scoreboard players set "鬼はプレイヤーにTNTを擦り付けてください" tnttag -32
scoreboard players set "フェーズ終了時爆発して鬼が死にます" tnttag -33
scoreboard players set "最後の一人が勝利となります" tnttag -34

execute @a[tag=oni] ~ ~ ~ title @a actionbar §coni §f: §a @a[tag=oni]


#-84 249 -107

#-5 60 -98