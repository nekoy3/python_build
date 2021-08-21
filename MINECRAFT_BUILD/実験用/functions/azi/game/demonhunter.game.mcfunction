#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#
#スコアボードsnを加算し、流れを進めます
execute @e[tag=select,scores={sn=0..150},type=armor_stand] ~ ~ ~ scoreboard players add @e[tag=select,type=armor_stand,c=1] sn 1
scoreboard players add @e[tag=select] sn 0

#通知
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§e1.ゲームシステムを起動します"}]}
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives add dhunt dummy "§cDemon Hunter"
execute @e[tag=select,scores={sn=5},type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar dhunt

#ステージを構築 パターン1/2/3/4  ※外部
execute @e[tag=select,scores={sn=7},type=armor_stand] ~ ~ ~ setblock -78 249 -98 redstone_block

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
#web_bp
execute @e[tag=web_bp] ~ ~ ~ execute @e[scores={bp_time2=-20}] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ setblock ~ ~ ~ web
#※クモの巣裏技対策
execute @e[scores={bp_time2=0}] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ detect ~ ~ ~ web 0 execute @s ~ ~ ~ detect ~ ~-1 ~ air 0 setblock ~ ~ ~ air

#lava_bp
execute @e[tag=lava_bp] ~ ~ ~ execute @e[scores={bp_time2=-20}] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ setblock lava ~ ~5 ~
 
#bomb_bp-フェーズ開始時
execute @e[tag=bomb_bp] ~ ~ ~ execute @e[scores={bp_time2=-20}] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ summon tnt ~ ~5 ~
#####################################################################
#鬼を決めます
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ function sys.sarchplayer.azi
execute @e[tag=select,scores={sn=15..},type=armor_stand] ~ ~ ~ scoreboard players operation @s players = sarchplayer sarchplayer

execute @e[tag=select,scores={sn=16,players=0..2},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cエラーが発生しました。player count condition error"}]}
execute @e[tag=select,scores={sn=16,players=0..2},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem

execute @e[tag=select,scores={sn=16,players=1..},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={sn=16,players=1..},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] add oni
execute @e[tag=select,scores={sn=16,players=5..},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=!oni] add oni

execute @e[tag=select,scores={sn=16,players=1..},type=armor_stand] ~ ~ ~ tag * remove hunter
execute @e[tag=select,scores={sn=16,players=1..},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=!oni] add hunter
execute @e[tag=select,scores={sn=16,players=5..},type=armor_stand] ~ ~ ~ tag @r[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=!oni,tag=!hunter] add hunter
#鬼通知
execute @e[tag=select,scores={sn=16},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ say §b私が鬼です！！
execute @e[tag=select,scores={sn=16},type=armor_stand] ~ ~ ~ execute @a[tag=hunter] ~ ~ ~ say §d私がハンターです！！
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


execute @e[tag=select,scores={phase=3550},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nフェーズ3000を切るまで逃げ回ってください。この時間はゲームに支障を与えられません。\n今のうちに画面右側のルール呼んどいてね"}]}
execute @e[tag=select,scores={phase=3000},type=armor_stand] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nフェーズ3000を切りました。ハンターは鬼を、鬼はプレイヤーを刈れ！！！"}]}

#制限時間をセット
execute @e[tag=select,scores={sn=1001},type=armor_stand] ~ ~ ~ scoreboard players set @s phase 3600
execute @e[tag=select,scores={phase=1..},type=armor_stand] ~ ~ ~ scoreboard players add @s phase -1

###############################################################################################################
#鬼が実行するメイン処理
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players add @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] oni 0
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ scoreboard players add @a[r=1.2,tag=!oni,tag=!hunter,scores={oni=0}] oni 1
scoreboard players add @a[scores={oni=1..}] oni 1
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=oni] ~ ~ ~ tag @a[r=1.2,tag=!oni,tag=!hunter,scores={oni=2}] add oni
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=oni,scores={oni=2}] ~ ~ ~ summon lightning_bolt
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=oni,scores={oni=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c鬼により鬼が増えました"}]}
scoreboard players set @a[scores={oni=30..}] oni 0
###############################################################################################################
###############################################################################################################
#ハンターが実行するメイン処理
#前提処理
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ scoreboard players add @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=oni] hunter 0
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=hunter] ~ ~ ~ scoreboard players add @a[r=1.2,tag=oni,scores={hunter=0}] hunter 1
scoreboard players add @a[scores={hunter=1..}] hunter 1
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=hunter] ~ ~ ~ tag @a[r=1.2,tag=oni,scores={hunter=2}] remove oni
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=!hunter,tag=!oni,scores={hunter=2}] ~ ~ ~ summon lightning_bolt
execute @e[tag=select,scores={phase=..3000,sn=1001..},type=armor_stand] ~ ~ ~ execute @a[tag=!hunter,tag=!oni,scores={hunter=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§b鬼が浄化されプレイヤーとなりました"}]}
scoreboard players set @a[scores={hunter=30..}] hunter 0
###############################################################################################################
######人数検知
execute @a[x=-30,y=6,z=-125,dx=50,dy=100,dz=50,m=!c,tag=!oni,tag=!hunter] ~ ~ ~ scoreboard players add "§b無記/プレイヤー" sarchplayer.last 1
execute @a[x=-30,y=6,z=-125,dx=50,dy=100,dz=50,m=!c,tag=oni] ~ ~ ~ scoreboard players add "§doni" sarchplayer.last 1
execute @a[x=-30,y=6,z=-125,dx=50,dy=100,dz=50,m=!c,tag=hunter] ~ ~ ~ scoreboard players add "§ehunter" sarchplayer.last 1

scoreboard players operation "§b無記/プレイヤー" dhunt = "§b無記/プレイヤー" sarchplayer.last
scoreboard players operation "§doni" dhunt = "§doni" sarchplayer.last
scoreboard players operation "§ehunter" dhunt = ""§ehunter" sarchplayer.last

scoreboard players operation @e[tag=select,type=armor_stand] dh.player = "§b無記/プレイヤー" sarchplayer.last
scoreboard players operation @e[tag=select,type=armor_stand] dh.oni = "§doni" sarchplayer.last
scoreboard players operation @e[tag=select,type=armor_stand] dh.hunter = ""§ehunter" sarchplayer.last

scoreboard players set "§b無記/プレイヤー" sarchplayer.last 0
scoreboard players set "§doni" sarchplayer.last 0
scoreboard players set "§ehunter" sarchplayer.last 0
###############################################################################################################

#終了処理
#プレイヤー滅亡
execute @e[tag=select,scores={sn=1100..,dh.player=0},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§bプレイヤーが滅亡したため鬼が勝利しました！！！"}]}
execute @e[tag=select,scores={sn=1100..,dh.player=0},type=armor_stand] ~ ~ ~ xp 175l @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=oni]
execute @e[tag=select,scores={sn=1100..,dh.player=0},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={sn=1100..,dh.player=0},type=armor_stand] ~ ~ ~ tag * remove hunter
execute @e[tag=select,scores={sn=1100..,dh.player=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
#鬼滅亡
execute @e[tag=select,scores={sn=1100..,dh.oni=0},type=armor_stand] ~ ~ ~ execute @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§b鬼が滅亡したためハンターとプレイヤーが勝利しました！！！"}]}
execute @e[tag=select,scores={sn=1100..,dh.oni=0},type=armor_stand] ~ ~ ~ xp 175l @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a,tag=!oni]
execute @e[tag=select,scores={sn=1100..,dh.oni=0},type=armor_stand] ~ ~ ~ tag * remove oni
execute @e[tag=select,scores={sn=1100..,dh.oni=0},type=armor_stand] ~ ~ ~ tag * remove hunter
execute @e[tag=select,scores={sn=1100..,dh.oni=0},type=armor_stand] ~ ~ ~ function azi/new.gameend.sytem
#通知
execute @e[tag=select,scores={phase=..250},type=armor_stand] ~ ~ ~

tag @a[x=0,y=8,z=0,r=10] remove oni
tag @a[x=0,y=8,z=0,r=10] remove hunter

#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#$#


scoreboard players operation "§bプレイヤー人数" dhunt = @e[tag=select,type=armor_stand] players
execute @e[tag=select,type=armor_stand] ~ ~ ~ scoreboard objectives setdisplay sidebar dhunt
scoreboard players operation "§dPhase" dhunt = @e[tag=select] phase
scoreboard players set "---------------------" dhunt -30
scoreboard players set "鬼とハンターと一般人"無記/プレイヤー"がスタート時にきめられます" dhunt -31
scoreboard players set "鬼はプレイヤーに近づき感染させてください" dhunt -32
scoreboard players set "ハンターは鬼に近づきプレイヤーにしてください" dhunt -33
scoreboard players set "鬼がプレイヤーを全滅させたら鬼の勝利となります" dhunt -34
scoreboard players set "§e鬼が消えるとプレイヤとハンターの勝利となります" dhunt -35

title @a actionbar §coni §f: §a @a[tag=oni] §f/ §dhunter : §a @a[tag=hunter] §f/ §1player §f: §a @a[tag=!oni,tag=!hunter,x=-30,y=4,z=-125,dx=50,dy=1000,dz=50,m=a]
