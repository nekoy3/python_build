#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add bbt dummy "§cBoss Battle"
execute @e[tag=select,scores={sn=5..},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar bbt

#ステージを構築
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e2.ステージを構築します"}]}

#ステージを構築   ※外部
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ setblock -78 249 -98 redstone_block
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ fill ~ 4 ~ ~50 2 ~50 air 0 replace bedrock

#シュルカーボックスの配置
execute @e[tag=select,scores={sn=1010..1040},type=armor_stand] ~ ~ ~ summon armor_stand -5 65 -98
execute @e[tag=select,scores={sn=1010..1040},type=armor_stand] ~ ~ ~ execute @e[x=-5,y=65,z=-98,r=2,type=armor_stand] ~ ~ ~ tag @s add www.com
execute @e[tag=select,scores={sn=1010..1040},type=armor_stand] ~ ~ ~ spreadplayers -5 -98 3 20 @e[tag=www.com]
execute @e[tag=select,scores={sn=1010..1040},type=armor_stand] ~ ~ ~ function azi/randomchest.azistage_randomize
execute @e[tag=select,scores={sn=1010..1040},type=armor_stand] ~ ~ ~ execute @e[tag=www.com,c=1] ~ ~ ~ clone -60 249 -114 -60 249 -114 ~ ~-1 ~ 
execute @e[tag=select,scores={sn=1010..1040},type=armor_stand] ~ ~ ~ kill @e[tag=www.com]
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
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ gamemode s @s
execute @e[tag=select,scores={sn=140..},type=armor_stand] -5 43 -98 setblock ~ ~ ~ bedrock
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ effect @s health_boost 1000000 9 true
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ effect @s instant_health 1 5 true
execute @e[tag=select,scores={sn=140},type=armor_stand] ~ ~ ~ execute @a[x=-5,y=60,z=-98,r=2] ~ ~ ~ tp @s ~ 15 ~

#ゲーム本回路を起動
execute @e[tag=select,scores={sn=140..150},type=armor_stand] ~ ~ ~ scoreboard players set @s sn 1000
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#



#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#####メイン本回路 流れ制御
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s sn 1
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players add @s game.management

#初期設定
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50] health 3
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§b一分後ボスが召喚されるのでシュルカーボックスから資材を集めてください！"}]}
execute @e[tag=select,scores={sn=1060},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§btips:ボスを十分以内に撃破出来たら§c生存者全員§b勝利となります。制限時間を超える、残り復活回数を超えて死亡してロビーに戻ると敗北となります。プレイヤーがいなくなるとゲームは終了します。"}]}
execute @e[tag=select,scores={sn=2200},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c1分が経過したためボスが出現します。戦闘準備！！"}]}
execute @e[tag=select,scores={sn=2220},type=armor_stand] ~ ~ ~ playsound random.orb @a[x=-30,y=0,z=-125,dx=50,dy=1000,dz=50]
execute @e[tag=select,scores={sn=2240},type=armor_stand] ~ ~ ~ playsound random.orb @a[x=-30,y=0,z=-125,dx=50,dy=1000,dz=50]
execute @e[tag=select,scores={sn=2260},type=armor_stand] ~ ~ ~ playsound random.orb @a[x=-30,y=0,z=-125,dx=50,dy=1000,dz=50]
execute @e[tag=select,scores={sn=2280},type=armor_stand] ~ ~ ~ playsound random.orb @a[x=-30,y=0,z=-125,dx=50,dy=1000,dz=50]
execute @e[tag=select,scores={sn=2300},type=armor_stand] ~ ~ ~ playsound random.levelup @a[x=-30,y=0,z=-125,dx=50,dy=1000,dz=50]
#ボス召喚、制御
execute @e[tag=select,scores={sn=2300},type=armor_stand] -5 40 -98 summon zombie ~ ~ ~
execute @e[tag=select,scores={sn=2300},type=armor_stand] -5 35 -98 effect @e[c=1,type=zombie] resistance 10 10 true
execute @e[tag=select,scores={sn=2300},type=armor_stand] -5 35 -98 tag @e[c=1,type=zombie] add bosscreeper
execute @e[tag=select,scores={sn=2300},type=armor_stand] -5 35 -98 effect @e[c=1,type=zombie] invisibility 10 10 true
execute @e[tag=select,scores={sn=2340..},type=armor_stand] -5 35 -98 function enemy/boss.creeper

#HP回復
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn3 = @s sn
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn3 %= s10 s10
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[name="不死のトーテム"] ~ ~ ~ execute @p ~ ~ ~ say §d不死のトーテムを投げて使用しhealthが1増えました
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[name="不死のトーテム"] ~ ~ ~ execute @p ~ ~ ~ scoreboard players add @s health 1
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[name="不死のトーテム"] ~ ~ ~ kill @s
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=2,z=-125,dx=50,dy=-10,dz=50] ~ ~ ~ tp -5 44 -98
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players set @a death 0
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 scoreboard players add @a[scores={death=0},r=3] death 1
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 scoreboard players add @a[scores={death=1},r=3] health -1
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=1},r=3] ~ ~ ~ say §c死亡しました。残り復活回数は§e1回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=2},r=3] ~ ~ ~ say §c死亡しました。残り復活回数は§e2回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=3},r=3] ~ ~ ~ say §c死亡しました。残り復活回数は§e3回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=4..},r=3] ~ ~ ~ say §c死亡しました。残り復活回数は§e3+回§cです。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=1..},r=3] ~ ~ ~ effect @s health_boost 1000000 9 true
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=1..},r=3] ~ ~ ~ effect @s instant_health 1 5 true
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=1..},r=3] ~ ~ ~ spreadplayers ~ ~ 3 20 @s
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=..0},r=3] ~ ~ ~ say §c死亡しました。脱落となります。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=..0},r=3] ~ ~ ~ tp @s 0 8 0


#############################################################################################################
execute @e[tag=select,scores={sn=2500..},type=armor_stand] ~ ~ ~ scoreboard players set @s enemyC 0
execute @e[tag=select,scores={sn=2500..},type=armor_stand] ~ ~ ~ execute @e[tag=bosscreeper] ~ ~ ~ scoreboard players set @e[tag=select] enemyC 1

#終了処理
execute @e[tag=select,scores={sn=2400..,enemyC=0},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ say §b勝利しました！！！
execute @e[tag=select,scores={sn=2400..,enemyC=0},type=armor_stand] ~ ~ ~ xp 300l @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a]
execute @e[tag=select,scores={sn=2400..,enemyC=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=13500},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§b制限時間に達しました！！！"}]}
execute @e[tag=select,scores={sn=13520},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=2400..,players=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem


scoreboard players operation @e[tag=select,type=armor_stand] sn4 = @e[tag=select,type=armor_stand] sn
scoreboard players operation @e[tag=select,type=armor_stand] sn4 -= s1000 s1000
scoreboard players operation @e[tag=select,type=armor_stand] sn4 /= s20 s20
scoreboard players operation @e[tag=select,type=armor_stand] sn5 = @e[tag=select,type=armor_stand] sn4
scoreboard players operation @e[tag=select,type=armor_stand] sn4 = s600 s600
scoreboard players operation @e[tag=select,type=armor_stand] sn4 -= @e[tag=select,type=armor_stand] sn5  
scoreboard players operation "§e残り時間" bbt = @e[tag=select,type=armor_stand] sn4
#scoreboard players operation "§eゲーム時間" bbt = @e[tag=select,type=armor_stand] sn4
scoreboard players reset "§eゲーム時間" bbt 
scoreboard players set "---------------------" bbt -30
scoreboard players set "制限時間内に" bbt -31
scoreboard players set "ステージのボックスの武器を取って" bbt -32
scoreboard players set "中央に佇んでいるボスを撃破しろ！！" bbt -33
