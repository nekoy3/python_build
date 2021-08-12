#統合版用にfunctionを作成し動作を確認する。
#コンバートスクリプトにかけても問題なく動作するかをチェックする。
#コンバート前をconvert_test.mcfunctionとし、コンバート後をconvert_after.mcfunctionとする。
#一文字目に「e」でexecuteコマンドを検知する。(コメント欄executeコマンドを変換しないようにする)

tp @s 0 4 0 0 0
fill ~3 ~3 ~3 ~-3 ~ ~-3 air
scoreboard objectives add test987j9uq34 dummy
scoreboard players set @a test987j9uq34 3
tag @a add test73482b3r2
xp 5l @a
#基本羅列変換1「execute as @a at @s run say 基本羅列変換1」に変換する。~ ~ ~であれば削除するが、値が入っている場合は別処理を行う。as 基本ｾﾚｸﾀ at @s
execute @a ~ ~ ~ say 基本羅列変換1
#基本羅列変換2「execute as @a at @s positioned ~ ~1 ~ run say 基本羅列変換2」に変換する。
execute @a ~ ~1 ~ say 基本羅列変換2
#基礎羅列変換3「execute as @e[distance=..5,gamemode=creative,type=player] at @s positioned 0 7 0 run say 基本羅列変換3」に変換する。
execute @e[r=5,m=c,type=player] 0 7 0 say 基本羅列変換3
#基礎羅列変換4「execute as @a[distance=0..5] at @s run say 基本羅列変換4」
execute @a[r=5,rm=0] ~ ~ ~ say 基本羅列変換4
#基礎羅列変換5「execute as @a[x=0,y=4,z=0,dx=2,dy=10,dz=2] at @s run say 基本羅列変換5」
execute @a[x=0,y=4,z=0,dx=2,dy=10,dz=2] ~ ~ ~ say 基本羅列変換5
#基礎羅列変換6「execute as @a[x_rotation=-30..60,y_rotation=-87..87] at @s run say 基本羅列変換6」
execute @a[rx=60,rxm=-30,ry=87,rym=-87] ~ ~ ~ say 基本羅列変換6
#基礎羅列変換7「execute as @a[limit=5,level=3..7000,scores={test987j9uq34=3..4},tag=test73482b3r2] at @s run say 基本羅列変換7」
execute @a[c=5,l=7000,lm=3,scores={test987j9uq34=3..4},tag=test73482b3r2] ~ ~ ~ say 基本羅列変換7
#基礎羅列変換8「execute as @a[name="Nekoyama 030330",tag=!sushi] at @s run say 基本羅列変換8」
execute @a[name="Nekoyama 030330",tag=!sushi] ~ ~ ~ say 基本羅列変換8
#基礎羅列変換9「execute as @a[gamemode=!adventure,scores={test987j9uq34=!7..23}] at @s run say 基本羅列変換9」
execute @a[m=!a,scores={test987j9uq34=!7..23}] ~ ~ ~ say 基本羅列変換9

#追加分
tp @a[m=!a,scores={test987j9uq34=!7..23}] 0 8 0
scoreboard objectives remove test987j9uq34
tag @a remove test73482b3r2
execute @e[tag=select,scores={bp_time2=..0},type=armor_stand] ~ ~ ~ clear @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50,m=a]
xp -20 @e[type=player]
xp 32768l @a[lm=30000,l=32767]
xp -503l @r
execute @e[r=50] ~ ~ ~ experience 8096l @a[r=50,scores={test987j9uq34=3..4}]
execute @e[r=50] ~ ~ ~ tp @s @p[lm=50]
execute @a[lm=50,l=300] ~ ~ ~ scoraboard players operation @s test987j9uq34 += @a[lm=40] test987j9uq34
execute @a[lm=50,l=300] ~ ~ ~ scoreboard players operation @s test987j9uq34 += @a[lm=40] test987j9uq34
execute @a ~ ~ ~ execute @e[type=zombie] ~ ~ ~ execute @p[r=50,rm=5] ~ ~ ~ execute @r[r=100] ~ ~ ~ execute @e[type=armor_stand,scores={bp_time2=..0,test987j9uq34=3..4}] ~ ~ ~ tp @p ^ ^ ^0.1 facing @p
execute @e[type=zombie] ~ ~ ~ function sushi/sushi
execute @e[tag=select,scores={sn=1015,bp_time=45..140},type=armor_stand] ~ ~ ~ scoreboard players add @s bp_time -5
execute @a[m=!c] ~ ~ ~ detect ~ ~ ~ air 0 execute @s ~ ~ ~ detect ~ ~-1 ~ grass 0 execute @s ~ ~ ~ detect ~-1 ~-1 ~ grass 0 execute @s ~ ~ ~ detect ~1 ~-1 ~ grass 0 execute @s ~ ~ ~ detect ~ ~-1 ~-1 grass 0 execute @s ~ ~ ~ detect ~ ~-1 ~1 grass 0 execute @s ~ ~ ~ detect ~1 ~-1 ~1 grass 0 execute @s ~ ~ ~ detect ~-1 ~-1 ~1 grass 0 execute @s ~ ~ ~ detect ~1 ~-1 ~-1 grass 0 execute @s ~ ~ ~ detect ~-1 ~-1 ~-1 grass 0 execute @s ~ ~ ~ detect ~1 ~ ~ air 0 execute @s ~ ~ ~ detect ~-1 ~ ~ air 0 execute @s ~ ~ ~ detect ~ ~ ~1 air 0 execute @s ~ ~ ~ detect ~ ~ ~-1 air 0 execute @s ~ ~ ~ detect ~1 ~ ~1 air 0 execute @s ~ ~ ~ detect ~1 ~ ~-1 air 0 execute @s ~ ~ ~ detect ~-1 ~ ~1 air 0 execute @s ~ ~ ~ detect ~-1 ~ ~-1 air 0 execute @s ~ ~ ~ detect ~ ~-4 ~ bedrock 0 execute @s ~ ~ ~ detect ~1 ~-4 ~ bedrock 0 execute @s ~ ~ ~ detect ~-1 ~-4 ~ bedrock 0 execute @s ~ ~ ~1 detect ~ ~-4 ~ bedrock 0 execute @s ~ ~ ~ detect ~ ~-4 ~-1 bedrock 0 execute @s ~ ~ ~ detect ~1 ~-4 ~1 bedrock 0 execute @s ~ ~ ~ detect ~1 ~-4 ~-1 bedrock 0 execute @s ~ ~ ~ detect ~-1 ~-4 ~1 bedrock 0 execute @s ~ ~ ~ detect ~-1 ~-4 ~-1 bedrock 0 tag @s add flat_error
execute @a[m=!a,c=5,l=7000,lm=3,ry=180,rym=-180] ~ ~ ~ execute @p[lm=0,l=99] ~ ~ ~ tell @a[r=10] 寿司食べたいんですけど、注文いいですか？ピザ一枚。
#executeコマンド分割数2,detectは1,2個目に存在する if block ID Pos
execute @a[m=!c] ~ ~ ~ detect ~ ~ ~ air 0 execute @s ~ ~ ~ detect ~ ~-1 ~ grass 0 execute @r ~ ~ ~ execute @s[lm=5,l=30] ~ ~ ~ detect 0 4 0 redstone_block 0 summon lightning_bolt
tellraw @a {"rawtext":[{"text":"開始までのカウントダウンを開始します"}]} 
tellraw @a {"rawtext":[{"text":"開始までのカウントダウンを開始します"},{"color":"yellow"}]} 
tellraw @a {"rawtext":[{"text":"§atest"},{"text":"§a§ltesttesttest"},{"text":"§r§a§ktest"}]}
execute @e[tag=select,scores={actNum=1}] ~ ~ ~ execute @s[tag=!randomSelected] ~ ~ ~ scoreboard players random @e[tag=select] random 1 11
execute @a[lm=30] ~ ~ ~ scoreboard players add @s test987j9uq34 -14
execute @a[lm=30] ~ ~ ~ scoreboard players remove @s test987j9uq34 -14
scoreboard players remove @s test987j9uq34 -14
scoreboard objectives add example1231 dummy "これはexampleかもしれない"
scoreboard objectives add jioagjk dummy
scoreboard players add test example1231 1
scoreboard objectives remove test987j9uq34
tag @a remove test73482b3r2
scoreboard objectives add test987j9uq34 dummy
scoreboard players random @e[tag=select] random 0 10
