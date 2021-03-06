#NEKOYAMA Converter 2021/07/25 17:04:50 converted
#name:TNTrun
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute as @e[tag=select,scores={sn=0..150},type=armor_stand] at @s run scoreboard players add @e[tag=select,type=armor_stand,limit=1] sn 1 
scoreboard players add @e[tag=select] sn 0
 
#通知
execute as @e[tag=select,scores={sn=5},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]} 
execute as @e[tag=select,scores={sn=5},type=armor_stand] at @s run scoreboard objectives add eg dummy "§4TNT run"
execute as @e[tag=select,scores={sn=5..},type=armor_stand] at @s run scoreboard objectives setdisplay sidebar ttr
 
#ステージを構築
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"§e2.ステージを構築します"}]} 
 
#ステージを構築   ※外部
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run summon armor_stand -5 8 -98
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run summon armor_stand -5 12 -98
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run summon armor_stand -5 16 -98
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run summon armor_stand -5 20 -98
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run summon armor_stand -5 24 -98
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s run summon armor_stand -5 28 -98
execute as @e[tag=select,scores={sn=7},type=armor_stand] at @s as @e[type=armor_stand,dy=30,limit=6] at @s run tag @s add stageedit 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run tp @s ~ ~ ~ ~2 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^15 tnt 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^16 stone_pressure_plate 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run tp @s ~ ~ ~ ~2 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^15 tnt 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^16 stone_pressure_plate 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run tp @s ~ ~ ~ ~2 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^15 tnt 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^16 stone_pressure_plate 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run tp @s ~ ~ ~ ~2 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^15 tnt 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^16 stone_pressure_plate 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run tp @s ~ ~ ~ ~2 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^15 tnt 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run fill ^ ^ ^ ^ ^ ^16 stone_pressure_plate 
execute as @e[tag=select,scores={sn=7..40},type=armor_stand] at @s as @e[tag=stageedit] at @s run kill @e[type=item] 
execute as @e[tag=select,scores={sn=40},type=armor_stand] at @s run kill @e[tag=stageedit] 
#不要
#execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ fill ~ 4 ~ ~50 2 ~50 air 0 replace bedrock
 
#シュルカーボックスの配置
execute as @e[tag=select,scores={sn=1010..1020},type=armor_stand] at @s run summon armor_stand -5 65 -98
execute as @e[tag=select,scores={sn=1010..1020},type=armor_stand] at @s as @e[distance=..2,x=-5,y=65,z=-98,type=armor_stand] at @s run tag @s add www.com 
execute as @e[tag=select,scores={sn=1010..1020},type=armor_stand] at @s run spreadplayers -5 -98 3 20 @e[tag=www.com] 
execute as @e[tag=select,scores={sn=1010..1020},type=armor_stand] at @s run function namearea:azi/randomchest.azistage_randomize
execute as @e[tag=select,scores={sn=1010..1020},type=armor_stand] at @s as @e[tag=www.com,limit=1] at @s run clone -60 249 -114 -60 249 -114 ~ ~-1 ~  
execute as @e[tag=select,scores={sn=1010..1020},type=armor_stand] at @s run kill @e[tag=www.com] 
#####################################################################
#特殊効果設定
execute as @e[tag=select,scores={sn=14},type=armor_stand] at @s run scoreboard players set @s sp 0 
 
execute as @e[tag=select,scores={sn=14,sp=0},type=armor_stand] at @s run function namearea:sktop/Git_python/neconvfunction_/rnumber_5i5b3q7q
 
execute as @e[tag=select,scores={sn=14,sp=1..50},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e未設定§rです。"}]} 
 
execute as @e[tag=select,scores={sn=14,sp=51..60},type=armor_stand] at @s run tag @e[tag=clear] add web_bp 
execute as @e[tag=select,scores={sn=14,sp=51..60},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e1/3 §rです。"}]} 
execute as @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] at @s run tag @e[tag=clear] add lava_bp 
execute as @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e2/3 §rです。"}]} 
execute as @e[tag=select,scores={sn=14,sp=71..80},type=armor_stand] at @s run tag @e[tag=clear] add bomb_bp 
execute as @e[tag=select,scores={sn=14,sp=61..70},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"今回の特殊モードは§e3/3 §rです。"}]} 
 
#特殊効果別本処理
 
#####################################################################
execute as @e[tag=select,scores={sn=15..},type=armor_stand] at @s run function namearea:sys.sarchplayer.azi
execute as @e[tag=select,scores={sn=15..},type=armor_stand] at @s run scoreboard players operation @s players = sarchplayer sarchplayer 
 
execute as @e[tag=select,scores={sn=16,players=0},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"§cエラーが発生しました。player count condition error"}]} 
execute as @e[tag=select,scores={sn=16,players=0},type=armor_stand] at @s run function namearea:azi/new.gameend.sytem
 
#####################################################################
 
#開始までの通知
execute as @e[tag=select,scores={sn=20},type=armor_stand] at @s run tellraw @a {"rawtext":[{"text":"開始までのカウントダウンを開始します"}]} 
execute as @e[tag=select,scores={sn=40},type=armor_stand] at @s run titleraw @a title {"rawtext": [{"text":"§a5 seconds..."}]} 
execute as @e[tag=select,scores={sn=40},type=armor_stand] at @s run playsound random.orb @a 
execute as @e[tag=select,scores={sn=60},type=armor_stand] at @s run titleraw @a title {"rawtext": [{"text":"§a4 seconds..."}]} 
execute as @e[tag=select,scores={sn=60},type=armor_stand] at @s run playsound random.orb @a 
execute as @e[tag=select,scores={sn=80},type=armor_stand] at @s run titleraw @a title {"rawtext": [{"text":"§a3 seconds..."}]} 
execute as @e[tag=select,scores={sn=80},type=armor_stand] at @s run playsound random.orb @a 
execute as @e[tag=select,scores={sn=100},type=armor_stand] at @s run titleraw @a title {"rawtext": [{"text":"§a2 seconds..."}]} 
execute as @e[tag=select,scores={sn=100},type=armor_stand] at @s run playsound random.orb @a 
execute as @e[tag=select,scores={sn=120},type=armor_stand] at @s run titleraw @a title {"rawtext": [{"text":"§c1 §asecond"}]} 
execute as @e[tag=select,scores={sn=120},type=armor_stand] at @s run playsound random.orb @a 
execute as @e[tag=select,scores={sn=140},type=armor_stand] at @s run titleraw @a title {"rawtext": [{"text":"§eStart!!!"}]} 
execute as @e[tag=select,scores={sn=140},type=armor_stand] at @s run playsound random.levelup @a 
 
#プレイヤーをテレポート
execute as @e[tag=select,scores={sn=140},type=armor_stand] at @s as @a[distance=..2,x=-5,y=60,z=-98] at @s run spreadplayers ~ ~ 3 7 @s 
 
#ゲーム本回路を起動
execute as @e[tag=select,scores={sn=140..150},type=armor_stand] at @s run scoreboard players set @s sn 1000 
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
 
 
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#####メイン本回路 流れ制御
execute as @e[tag=select,scores={sn=1000..},type=armor_stand] at @s run scoreboard players add @s sn 1 
#execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a]
 
execute as @e[tag=select,scores={sn=1000..},type=armor_stand] at @s run xp add @a[x=-30,y=6,z=-125,dx=50,dy=1000,dz=50,gamemode=adventure] 10 points 
execute as @e[tag=select,scores={sn=0..},type=armor_stand] at @s run scoreboard players add @e[type=tnt] sn 1 
execute as @e[tag=select,scores={sn=0..},type=armor_stand] at @s run kill @e[type=tnt,scores={sn=5..}] 
execute as @e[tag=select,scores={sn=1200..,players=0},type=armor_stand] at @s run function namearea:azi/new.gameend.sytem
 
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
 
execute as @e[tag=select,scores={sn=0..},type=armor_stand] at @s run scoreboard players operation @s sn2 = @s sn 
execute as @e[tag=select,scores={sn=0..},type=armor_stand] at @s run scoreboard players operation @s sn2 -= s1000 s1000 
execute as @e[tag=select,scores={sn=0..},type=armor_stand] at @s run scoreboard players operation @s sn2 %= s20 s20 
scoreboard players operation "§e残り時間" ttr = @e[tag=select,type=armor_stand] sn2
scoreboard players operation "§c残りプレイヤー" ttr = @e[tag=select,type=armor_stand] players




 
execute as @a[gamemode=adventure] at @s run say これは変換用サンプルテキストです。
