#name:Group extinction game
#集団殲滅
#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add eg dummy "§5Extinction Game"
execute @e[tag=select,scores={sn=5..},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar eg

#ステージを構築
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e2.ステージを構築します"}]}

#ステージを構築   ※外部
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ setblock -78 249 -98 redstone_block
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ fill ~ 4 ~ ~50 2 ~50 air 0 replace bedrock

#シュルカーボックスの配置
execute @e[tag=select,scores={sn=1010..1020},type=armor_stand] ~ ~ ~ summon armor_stand -5 65 -98
execute @e[tag=select,scores={sn=1010..1020},type=armor_stand] ~ ~ ~ execute @e[x=-5,y=65,z=-98,r=2,type=armor_stand] ~ ~ ~ tag @s add www.com
execute @e[tag=select,scores={sn=1010..1020},type=armor_stand] ~ ~ ~ spreadplayers -5 -98 3 20 @e[tag=www.com]
execute @e[tag=select,scores={sn=1010..1020},type=armor_stand] ~ ~ ~ function azi/randomchest.azistage_randomize
execute @e[tag=select,scores={sn=1010..1020},type=armor_stand] ~ ~ ~ execute @e[tag=www.com,c=1] ~ ~ ~ clone -60 249 -114 -60 249 -114 ~ ~-1 ~ 
execute @e[tag=select,scores={sn=1010..1020},type=armor_stand] ~ ~ ~ kill @e[tag=www.com]
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
execute @e[tag=select,scores={sn=140..},type=armor_stand] -5 43 -98 setblock ~ ~ ~ bedrock
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
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bフェーズは五秒後から開始されます。シュルカーボックスから資材を集めてください！"}]}
execute @e[tag=select,scores={sn=2200},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c1分が経過しました。"}]}
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c<デバッグ> §rスポーン地点を三つ設置します。"}]}
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 summon armor_stand
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 summon armor_stand
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 summon armor_stand
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 tag @e[x=-5,y=60,z=-98,r=2,c=3,type=armor_stand] add spawnpoint
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 spreadplayers ~ ~ 7 20 @e[tag=spawnpoint,c=1]
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 spreadplayers ~ ~ 7 20 @e[tag=spawnpoint,c=1]
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 spreadplayers ~ ~ 7 20 @e[tag=spawnpoint,c=1]
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=2,z=-125,dx=50,dy=-10,dz=50,tag=spawnpoint] ~ ~ ~ spreadplayers ~ ~ 7 20 @s 
execute @e[tag=select,scores={sn=1030},type=armor_stand] -5 60 -98 execute @e[tag=spawnpoint] ~ ~ ~ tp @s ~ ~1000 ~
execute @e[tag=select,scores={sn=1030},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c<デバッグ> §rスポーン地点を設置しました。"}]}
#算術演算
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 = @s sn
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn2 %= s100 s100

execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn3 = @s sn
execute @e[tag=select,scores={sn=1000..},type=armor_stand] ~ ~ ~ scoreboard players operation @s sn3 %= s5 s5

#HP回復
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

execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=1..},r=3] ~ ~ ~ tag @s add respawn
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=2,z=-125,dx=50,dy=-10,dz=50,tag=respawn] ~ ~ ~ spreadplayers ~ ~ 3 20 @s  
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=3,z=-125,dx=50,dy=1000,dz=50,tag=respawn] ~ ~ ~ tag @s remove respawn

execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 tag @e[x=-5,y=60,z=-98,r=2,c=3,type=armor_stand] add spawnpoint
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 spreadplayers ~ ~ 7 20 @e[tag=spawnpoint,c=1]
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 spreadplayers ~ ~ 7 20 @e[tag=spawnpoint,c=1]
execute @e[tag=select,scores={sn=1001},type=armor_stand] -5 60 -98 spreadplayers ~ ~ 7 20 @e[tag=spawnpoint,c=1]
execute @e[tag=select,scores={sn=1001..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=2,z=-125,dx=50,dy=-10,dz=50,tag=spawnpoint] ~ ~ ~ spreadplayers ~ ~ 7 20 @s 






execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=..0},r=3] ~ ~ ~ say §c死亡しました。脱落となります。
execute @e[tag=select,scores={sn=1001..,sn3=0},type=armor_stand] -5 44 -98 execute @a[scores={death=1,health=..0},r=3] ~ ~ ~ tp @s 0 8 0
#シュルカーボックスの定期的配置
execute @e[tag=select,scores={sn=1020..,sn2=0},type=armor_stand] ~ ~ ~ scoreboard players add @s stop 0
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ summon armor_stand -5 65 -98
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ execute @e[x=-5,y=65,z=-98,r=2,type=armor_stand] ~ ~ ~ tag @s add www.com
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ spreadplayers -5 -98 3 20 @e[tag=www.com]
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ function azi/randomchest.azistage_randomize
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ execute @e[tag=www.com,c=1] ~ ~ ~ clone -60 249 -114 -60 249 -114 ~ ~-1 ~ 
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ kill @e[tag=www.com]
execute @e[tag=select,scores={sn=1020..,sn2=0,stop=..39},type=armor_stand] ~ ~ ~ execute @e[tag=www.com,c=1] ~ ~ ~ scoreboard players add @e[tag=select] stop 1

#########メイン/フェーズ実行
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard objectives add phase dummy sn
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard objectives add phase.intime dummy sn
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard objectives add phase.enemycount dummy sn
#ルール
#sn値は全体の時間の流れを制御する。プレイ時間=(sn-1000)/20で求められる
#phase値はフェーズを指す。フェーズ終了検知後加算する。フェーズ開始時通知はphase.intime=1を検知して実行する。
#phase.intime値はフェーズ内経過時間を指す。フェーズ終了時リセットする。常に加算される。139行以降はスコアは初期値に戻されても＋1の値になるのでsn=1がフェーズ最初処理地点になるので注意
#phase.enemycount値は敵の数の検知用スコア。0になったとき敵のせん滅が完了したことを指す。注意としてはphase.intime値が20異常であることは条件とする。phase.enemycount値を加算するエンティティはそのフェーズで発生する敵のタイプやタグを指定しexecuteで加算する
execute @e[tag=select,scores={sn=1100..},type=armor_stand] ~ ~ ~ scoreboard players add @s phase.intime 1

execute @e[tag=select,scores={sn=1100..,phase.intime=1..},type=armor_stand] ~ ~ ~ execute @e[type=husk] ~ ~ ~ detect ~ ~ ~ leaves -1 tp @s ~ ~1 ~
execute @e[tag=select,scores={sn=1100..,phase.intime=1..},type=armor_stand] ~ ~ ~ execute @e[type=husk] ~ ~ ~ detect ~ ~ ~ leaves2 -1 tp @s ~ ~1 ~
execute @e[tag=select,scores={sn=1100..,phase.intime=1..},type=armor_stand] ~ ~ ~ execute @a ~ ~ ~ detect ~ ~ ~ leaves -1 tp @s ~ ~1 ~
execute @e[tag=select,scores={sn=1100..,phase.intime=1..},type=armor_stand] ~ ~ ~ execute @a ~ ~ ~ detect ~ ~ ~ leaves2 -1 tp @s ~ ~1 ~
execute @e[tag=select,scores={sn=1100..,phase.intime=3000..,sn3=0},type=armor_stand] ~ ~ ~ summon tnt -5 100 -98
execute @e[tag=select,scores={sn=1100..,phase.intime=3000..,sn3=0},type=armor_stand] ~ ~ ~ tag @e[x=-5,y=100,z=-98,r=2] add tnt.r
execute @e[tag=select,scores={sn=1100..,phase.intime=3000..,sn3=0},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=tnt.r] sn 1
execute @e[tag=select,scores={sn=1100..,phase.intime=3000..,sn3=0},type=armor_stand] ~ ~ ~ spreadplayers -5 -98 3 20 @e[tag=tnt.r,scores={sn=1}]
execute @e[tag=select,scores={sn=1100..,phase.intime=3000..,sn3=0},type=armor_stand] ~ ~ ~ execute @e[tag=tnt.r,scores={sn=1}] ~ ~ ~ tp @s ~ ~100 ~
execute @e[tag=select,scores={sn=1100..,phase.intime=3000},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§a§lフェーズ経過時間が2分30秒を超えたため爆撃が開始されました。"}]}

execute @e[tag=select,scores={sn=1100..,phase.intime=7000,type=armor_stand] ~ ~ ~ kill @e[type=husk]
execute @e[tag=select,scores={sn=1100..,phase.intime=7000},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c§lフェーズ経過時間が五分経過したため強制的に現フェーズを終了しました。。"}]}

#常時加算・フェーズ内経過時間加算
execute @e[tag=select,scores={sn=1100},type=armor_stand] ~ ~ ~ scoreboard players set @s phase 1
execute @e[tag=select,scores={sn=1100},type=armor_stand] ~ ~ ~ tag @s remove phase.end

#全フェーズ共通でタグ[phase.end]が付与された時の処理を実行
execute @e[tag=select,scores={sn=1100..},type=armor_stand] ~ ~ ~ execute @s[tag=phase.end] ~ ~ ~ scoreboard players set @s phase.intime 0
execute @e[tag=select,scores={sn=1100..},type=armor_stand] ~ ~ ~ execute @s[tag=phase.end] ~ ~ ~ scoreboard players add @s phase 1
execute @e[tag=select,scores={sn=1100..},type=armor_stand] ~ ~ ~ execute @s[tag=phase.end] ~ ~ ~ scoreboard players set @s phase.enemycount 0
execute @e[tag=select,scores={sn=1100..},type=armor_stand] ~ ~ ~ execute @s[tag=phase.end] ~ ~ ~ tag @s remove phase.end

#フェーズ^1
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPhase §e§lI"}]}
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ハスクが3地点各五体合計15体召喚されます！！"}]}
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=1},type=armor_stand] ~ ~ ~ title @a title §aPhase §e§l1
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ playsound random.levelup @s
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=1..5},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon husk
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=1..5},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=husk,c=1]
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[tag=select,c=1] phase.enemycount 0
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] ~ ~ ~ scoreboard players add @e[tag=select] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=1,phase.intime=20..,phase.enemycount=0},type=armor_stand] ~ ~ ~ tag @s add phase.end
#phase.endを付与すると次回フェーズ内経過時間は1になります。(phase.intime=1)
#フェーズ^2
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPhase §e§lII"}]}
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ハスクが15体ダイヤ装備をして出現します。攻撃力微強化"}]}
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=1},type=armor_stand] ~ ~ ~ title @a title §aPhase §e§l2
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ playsound random.levelup @s
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=1..5},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon husk
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=1..5},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=husk,c=1]
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=5},type=armor_stand] ~ ~ ~ replaceitem entity @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] slot.armor.chest 0 diamond_chestplate
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=5},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] strength 10000 0 true
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[tag=select,c=1] phase.enemycount 0
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=2,phase.intime=20..,phase.enemycount=0},type=armor_stand] ~ ~ ~ tag @s add phase.end
#フェーズ^3
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPhase §e§lIII"}]}
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ハスクが18体召喚されます。のち三体は完全透明化して出現します。攻撃力小強化"}]}
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=1},type=armor_stand] ~ ~ ~ title @a title §aPhase §e§l3
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ playsound random.levelup @s
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=1..6},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon husk
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=1..6},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=husk,c=1]
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=10},type=armor_stand] ~ ~ ~ effect @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk,c=3] invisibility 10000000 1
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=10},type=armor_stand] ~ ~ ~ replaceitem entity @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk,c=3] slot.armor.feet 0 diamond_boots
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] strength 10000 1 true
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[tag=select,c=1] phase.enemycount 0
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=3,phase.intime=20..,phase.enemycount=0},type=armor_stand] ~ ~ ~ tag @s add phase.end
#フェーズ^4
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPhase §e§lIV"}]}
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ハスクが30体召喚されます。攻撃力超強化"}]}
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=1},type=armor_stand] ~ ~ ~ title @a title §aPhase §e§l4
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ playsound random.levelup @s
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=1..10},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon husk
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=1..10},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=husk,c=1]
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=10},type=armor_stand] ~ ~ ~ replaceitem entity @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] slot.weapon.mainhand 0 trident
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] strength 10000 5 true
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=10},type=armor_stand] ~ ~ ~ summon husk -5 35 -98
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[tag=select,c=1] phase.enemycount 0
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=4,phase.intime=20..,phase.enemycount=0},type=armor_stand] ~ ~ ~ tag @s add phase.end
#フェーズ^5
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPhase §e§lV"}]}
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ハスクが30体召喚されます。攻撃力中強化。エンダーマイトも30体召喚されます。"}]}
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1},type=armor_stand] ~ ~ ~ title @a title §aPhase §e§l5
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ playsound random.levelup @s
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1..10},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon husk
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1..10},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=husk,c=1]
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1..10},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon endermite
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=1..10},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=endermite,c=1]
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=10},type=armor_stand] ~ ~ ~ replaceitem entity @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] slot.weapon.mainhand 0 trident
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] strength 10000 2 true
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=silverfish] strength 10000 0 true
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[tag=select,c=1] phase.enemycount 0
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=endermite] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=5,phase.intime=20..,phase.enemycount=0},type=armor_stand] ~ ~ ~ tag @s add phase.end
#フェーズ^6
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§aPhase §e§lVI"}]}
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=1},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"ステータスが急激に上がったハスク9体が召喚されます。"}]}
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=1},type=armor_stand] ~ ~ ~ title @a title §aPhase §e§l6
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=1},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ playsound random.levelup @s
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=1..3},type=armor_stand] ~ ~ ~ execute @e[tag=spawnpoint] ~ ~-1000 ~ summon husk
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=1..3},type=armor_stand] ~ ~ ~ spreadplayers ~ ~ 0 1 @e[type=endermite,c=1]
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ replaceitem entity @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] slot.weapon.mainhand 0 trident
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ replaceitem entity @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] slot.armor.chest 0 iron_chestplate
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] strength 10000 3 true
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] speed 10000 1 true
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] jump_boost 10000 2 true
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] health_boost 10000 14 true
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] instant_damage 1 30 true
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=10},type=armor_stand] ~ ~ ~ effect @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] strength 10000 3 true
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[type=husk,x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] sn2 0
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players random @e[c=2,type=husk,x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] sn2 1
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ scoreboard players operation @s sn += @s sn2
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ scoreboard players operation @s sn4 = @s sn
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] ~ ~ ~ scoreboard players operation @s sn4 %= s400 s400
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn4=0}] ~ ~ ~ scoreboard players add @s sn3 1
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=1..}] ~ ~ ~ scoreboard players add @s sn3 1
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=5}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^1
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=7}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^2
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=9}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^3
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=11}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^4
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=13}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^5
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=15}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^6
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=17}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^7
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=19}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^8
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=21}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^9
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[type=husk,scores={sn3=23}] ~ ~0.5 ~ summon evocation_fang ^ ^ ^10
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ scoreboard players set @e[tag=select,c=1] phase.enemycount 0
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=husk] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..},type=armor_stand] ~ ~ ~ execute @e[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,type=endermite] ~ ~ ~ scoreboard players add @e[tag=select,c=1] phase.enemycount 1
execute @e[tag=select,scores={sn=1100..,phase=6,phase.intime=20..,phase.enemycount=0},type=armor_stand] ~ ~ ~ tag @s add phase.end

#一時的な処理
execute @e[tag=select,scores={sn=1100..,phase=7,phase.enemycount=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem


#############################################################################################################

#終了処理
execute @e[tag=select,scores={sn=XXXX},type=armor_stand,tag=!testmode] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ say §b勝利しました！！！
execute @e[tag=select,scores={sn=XXXX},type=armor_stand,tag=!testmode] ~ ~ ~ xp 175l @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a]
execute @e[tag=select,scores={sn=XXXX},type=armor_stand,tag=!testmode] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=1400..,players=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=10},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar eg
scoreboard players operation @e[tag=select,type=armor_stand] sn4 = @e[tag=select,type=armor_stand] sn
scoreboard players operation @e[tag=select,type=armor_stand] sn4 -= s1000 s1000
scoreboard players operation @e[tag=select,type=armor_stand] sn4 /= s20 s20
scoreboard players operation @e[tag=select,type=armor_stand] sn5 = @e[tag=select,type=armor_stand] sn4
scoreboard players operation @e[tag=select,type=armor_stand] sn4 = s900 s900
scoreboard players operation @e[tag=select,type=armor_stand] sn4 -= @e[tag=select] sn5
scoreboard players operation "§e残り時間" eg = @e[tag=select,type=armor_stand] sn4
scoreboard players operation "§aフェーズ" eg = @e[tag=select,type=armor_stand] phase
scoreboard players operation "§aフェーズ経過時間" eg = @e[tag=select,type=armor_stand] phase.intime
scoreboard players operation "§c残り敵の数" eg = @e[tag=select,type=armor_stand] phase.enemycount
scoreboard players set "---------------------" eg -30
scoreboard players set "Extinctionはせん滅を意味する。" eg -31
scoreboard players set "シュルカーボックスが定期的に追加されるので" eg -32
scoreboard players set "武器を手に取りハスクを倒してください" eg -33
scoreboard players set "§4漁夫の利は可能§rです。" eg -34
