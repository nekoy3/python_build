#NEKOYAMA Converter 2021/08/22 17:36:13 converted
#統合版用にfunctionを作成し動作を確認する。
#コンバートスクリプトにかけても問題なく動作するかをチェックする。
#コンバート前をconvert_test.mcfunctionとし、コンバート後をconvert_after.mcfunctionとする。
#一文字目に「e」でexecuteコマンドを検知する。(コメント欄executeコマンドを変換しないようにする)

tp @s 0 4 0 0 0
fill ~3 ~3 ~3 ~-3 ~ ~-3 air
scoreboard objectives add test987j9uq34 dummy
scoreboard players set @a test987j9uq34 3
tag @a add test73482b3r2
xp add @a 5 levels 
#基本羅列変換1「execute as @a at @s run say 基本羅列変換1」に変換する。~ ~ ~であれば削除するが、値が入っている場合は別処理を行う。as 基本ｾﾚｸﾀ at @s
execute as @a at @s run say 基本羅列変換1
#基本羅列変換2「execute as @a at @s positioned ~ ~1 ~ run say 基本羅列変換2」に変換する。
execute as @a at @s run say 基本羅列変換2
#基礎羅列変換3「execute as @e[distance=..5,gamemode=creative,type=player] at @s positioned 0 7 0 run say 基本羅列変換3」に変換する。
execute as @e[distance=..5,gamemode=creative,type=player] at @s run say 基本羅列変換3
#基礎羅列変換4「execute as @a[distance=0..5] at @s run say 基本羅列変換4」
execute as @a[distance=0..5] at @s run say 基本羅列変換4
#基礎羅列変換5「execute as @a[x=0,y=4,z=0,dx=2,dy=10,dz=2] at @s run say 基本羅列変換5」
execute as @a[x=0,y=4,z=0,dx=2,dy=10,dz=2] at @s run say 基本羅列変換5
#基礎羅列変換6「execute as @a[x_rotation=-30..60,y_rotation=-87..87] at @s run say 基本羅列変換6」
execute as @a[y_rotation=-87..87,x_rotation=-30..60] at @s run say 基本羅列変換6
#基礎羅列変換7「execute as @a[limit=5,level=3..7000,scores={test987j9uq34=3..4},tag=test73482b3r2] at @s run say 基本羅列変換7」
execute as @a[level=3..7000,limit=5,scores={test987j9uq34=3..4},tag=test73482b3r2] at @s run say 基本羅列変換7
#基礎羅列変換8「execute as @a[name="Nekoyama 030330",tag=!sushi] at @s run say 基本羅列変換8」
execute as @a[name="Nekoyama 030330",tag=!sushi] at @s run say 基本羅列変換8
#基礎羅列変換9「execute as @a[gamemode=!adventure,scores={test987j9uq34=7..23}] at @s run say 基本羅列変換9」
execute as @a[gamemode=!adventure,scores={test987j9uq34=7..23}] at @s run say 基本羅列変換9

#追加分
tp @a[gamemode=!adventure,scores={test987j9uq34=7..23}] 0 8 0
scoreboard objectives remove test987j9uq34
tag @a remove test73482b3r2
execute as @e[tag=select,scores={bp_time2=..0},type=armor_stand] at @s run clear @a[x=-30,y=6,z=-125,dx=50,dy=10,dz=50,gamemode=adventure] 
xp add @e[type=player] -20 points 
xp add @a[level=30000..32767] 32768 levels 
xp add @r -503 levels 
execute as @e[distance=..50] at @s run xp add @a[distance=..50,scores={test987j9uq34=3..4}] 8096 levels 
execute as @e[distance=..50] at @s run tp @s @p[level=50..] 
#error
execute as @a[level=50..300] at @s run scoreboard players operation @s test987j9uq34 += @a[level=40..] test987j9uq34 
execute as @a at @s as @e[type=zombie] at @s as @p[distance=5..50] at @s as @r[distance=..100] at @s as @e[type=armor_stand,scores={bp_time2=..0,test987j9uq34=3..4}] at @s run tp @p ^ ^ ^0.1 facing entity @p 
execute as @e[type=zombie] at @s run function namearea:sushi/sushi
execute as @e[tag=select,scores={sn=1015,bp_time=45..140},type=armor_stand] at @s run scoreboard players remove @s bp_time 5 
execute as @a[gamemode=!creative] at @s if block ~ ~ ~ air as @s at @s if block ~ ~-1 ~ grass as @s at @s if block ~-1 ~-1 ~ grass as @s at @s if block ~1 ~-1 ~ grass as @s at @s if block ~ ~-1 ~-1 grass as @s at @s if block ~ ~-1 ~1 grass as @s at @s if block ~1 ~-1 ~1 grass as @s at @s if block ~-1 ~-1 ~1 grass as @s at @s if block ~1 ~-1 ~-1 grass as @s at @s if block ~-1 ~-1 ~-1 grass as @s at @s if block ~1 ~ ~ air as @s at @s if block ~-1 ~ ~ air as @s at @s if block ~ ~ ~1 air as @s at @s if block ~ ~ ~-1 air as @s at @s if block ~1 ~ ~1 air as @s at @s if block ~1 ~ ~-1 air as @s at @s if block ~-1 ~ ~1 air as @s at @s if block ~-1 ~ ~-1 air as @s at @s if block ~ ~-4 ~ bedrock as @s at @s if block ~1 ~-4 ~ bedrock as @s at @s if block ~-1 ~-4 ~ bedrock as @s at @s if block ~ ~-4 ~ bedrock as @s at @s if block ~ ~-4 ~-1 bedrock as @s at @s if block ~1 ~-4 ~1 bedrock as @s at @s if block ~1 ~-4 ~-1 bedrock as @s at @s if block ~-1 ~-4 ~1 bedrock as @s at @s if block ~-1 ~-4 ~-1 bedrock run tag @s add flat_error 
execute as @a[y_rotation=-180..180,level=3..7000,gamemode=!adventure,limit=5] at @s as @p[level=0..99] at @s run tell @a[distance=..10] 寿司食べたいんですけど、注文いいですか？ピザ一枚。 
#executeコマンド分割数2,detectは1,2個目に存在する if block ID Pos
execute as @a[gamemode=!creative] at @s if block ~ ~ ~ air as @s at @s if block ~ ~-1 ~ grass as @r at @s as @s[level=5..30] at @s if block 0 4 0 redstone_block run summon lightning_bolt 
tellraw @a {"text":"開始までのカウントダウンを開始します"} 
tellraw @a {"text":"開始までのカウントダウンを開始します","color":"yellow"} 
tellraw @a ["",{"text":"test","obfuscated":true},{"text":"testtesttest","color":"green"},{"text":"test","obfuscated":true,"bold":true,"color":"green","color":"green"}]
execute as @e[tag=select,scores={actNum=1}] at @s as @s[tag=!randomSelected] at @s run function namearea:neconvfunction_/rnumber_ivaq2e5f
execute as @a[level=30..] at @s run scoreboard players remove @s test987j9uq34 14 
execute as @a[level=30..] at @s run scoreboard players add @s test987j9uq34 14 
scoreboard players add @s test987j9uq34 14
scoreboard objectives add example1231 dummy
scoreboard objectives modify add displayname {"text":"これはexampleかもしれない"}
scoreboard objectives add jioagjk dummy
scoreboard players add test example1231 1
scoreboard objectives remove test987j9uq34
tag @a remove test73482b3r2
scoreboard objectives add test987j9uq34 dummy
function namearea:neconvfunction_/rnumber_4egacmo8
summon armor_stand -48 248 -122
execute as @a[x=-30,y=4,z=-119,dx=50,dy=1000,dz=44,gamemode=adventure] at @s if block ~ ~-1 ~ tnt run tp @s ~ ~-1 ~ 
execute as @a[x=-30,y=4,z=-119,dx=50,dy=1000,dz=44,gamemode=adventure] at @s if block ~ ~-1 ~ redstone_block run tp @s ~ ~-1 ~ 
spreadplayers -4.5 -99.5 0 25 false @e[tag=sbp,scores={sp=1}]
execute as @e[tag=select,scores={sn=1015},type=armor_stand] at @s run scoreboard players add @s bp_time 0 
effect give @a[level=10..] saturation 1 255 true 
execute as @a[level=30..] at @s run effect clear @e resistance 
effect clear @e resistance 
effect clear @e instant_health
scoreboard players operation @s test987j9uq34 += @s test987j9uq34
execute as @a at @s run scoreboard players operation @s test987j9uq34 += @a[level=40..] test987j9uq34 
execute as @e[tag=select,scores={cl=1..1000}] at @s run effect clear @e[tag=clear] invisibility 
scoreboard players operation @a[level=40..60,name="な は"] test987j9uq34 += @a[level=40..,distance=..5] test987j9uq34
execute as @e[tag=select,scores={cl=1..1000}] at @s run tag @e remove testmode
execute as @e[tag=select,scores={cl=1..1000}] at @s run gamemode adventure @a[gamemode=survival] 
execute as @e[tag=select,scores={cl=1..1000}] at @s run gamerule sendCommandFeedback false
scoreboard objectives add test987j9uq34 dummy
scoreboard objectives modify test987j9uq34 displayname {"text":"これはテスト ディスプレイです","color":"green"}
execute as @e[tag=clear] at @s run fill ~50 ~ ~50 ~ ~ ~ air replace white_glazed_terracotta
