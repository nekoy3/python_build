scoreboard objectives add int dummy intrgrate
scoreboard objectives add score dummy score
execute @e[type=pig] ~ ~ ~ scoreboard players add @p int 1
execute @e[type=pig] ~ ~ ~ execute @p[r=10,c=1] ~ ~ ~ scoreboard players operation @e[type=pig,c=1] int = @s int

---------------スコア1 y5バリアブロック
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=1}] ~ ~ ~ w @s §bmode:barrier y5
execute @a[scores={int=1}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~ ~ ~ ~ ~5 ~ barrier
---------------スコア2　街灯
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=2}] ~ ~ ~ w @s §bmode:streetlamp
execute @a[scores={int=2}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~ ~ ~ ~ ~2 ~ fence
execute @a[scores={int=2}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ setblock ~ ~3 ~ stripped_oak_log
execute @a[scores={int=2}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ setblock ~1 ~3 ~ torch 1
execute @a[scores={int=2}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ setblock ~-1 ~3 ~ torch 2
execute @a[scores={int=2}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ setblock ~ ~3 ~1 torch 3
execute @a[scores={int=2}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ setblock ~ ~3 ~-1 torch 4
---------------スコア3　草ブロック3*3
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=3}] ~ ~ ~ w @s §bmode:grass3*3 y-1
execute @a[scores={int=3}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 grass
---------------スコア4 ランダム石レンガ
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=4}] ~ ~ ~ w @s §bmode:random stonebricks
execute @a[scores={int=4}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ scoreboard players random @s score 1 10
execute @e[type=chicken,scores={score=1..6}] ~ ~ ~ setblock ~ ~ ~ stonebrick 0
execute @e[type=chicken,scores={score=7..8}] ~ ~ ~ setblock ~ ~ ~ stonebrick 1
execute @e[type=chicken,scores={score=9..10}] ~ ~ ~ setblock ~ ~ ~ stonebrick 2
execute @e[type=chicken,scores={score=1..10}] ~ ~ ~ tp @s ~ ~-10000000 ~
---------------スコア5　ランダム丸石
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=5}] ~ ~ ~ w @s §bmode:random cobblestone
execute @a[scores={int=5}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ scoreboard players random @s score 1 10
execute @e[type=chicken,scores={score=1..6}] ~ ~ ~ setblock ~ ~ ~ cobblestone 0
execute @e[type=chicken,scores={score=7..10}] ~ ~ ~ setblock ~ ~ ~ mossy_cobblestone 0
execute @e[type=chicken,scores={score=1..10}] ~ ~ ~ tp @s ~ ~-10000000 ~
---------------スコア6　3*3*3　立方体型ブロック除去
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=6}] ~ ~ ~ w @s §bmode:3*3*3 cube air
execute @a[scores={int=6}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air 0 replace
---------------スコア7 草の道3*3
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=7}] ~ ~ ~ w @s §bmode:grass_path 3*3 y-1
execute @a[scores={int=7}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 grass_path
---------------スコア8 畑作成
execute @e[type=pig] ~ ~ ~ execute @p[r=10,scores={int=8}] ~ ~ ~ w @s §bmode:farm (position:-x,-y)
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~6 ~-1 ~8 ~ ~-1 ~ dirt
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~6 ~ ~8 ~ ~ ~ log
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~5 ~ ~7 ~1 ~ ~1 farmland
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~3 ~ ~7 ~3 ~ ~1 water
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~1 ~1 ~1 ~2 ~1 ~5 potatoes 7
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~4 ~1 ~1 ~5 ~1 ~5 carrots 7
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~1 ~1 ~5 ~5 ~1 ~7 wheat 7
execute @a[scores={int=8}] ~ ~ ~ execute @e[c=1,type=chicken,r=10] ~ ~ ~ fill ~3 ~1 ~7 ~3 ~1 ~1 air
---------------スコア9 
---------------
---------------
        
---------------
execute @e[type=pig,scores={int=0..}] ~ ~ ~ tp @s ~ ~-10000000 ~
kill @e[type=pig,scores={int=0..}]
execute @e[type=chicken] ~ ~ ~ tp @s ~ ~-10000000 ~
kill @e[type=chicken]
scoreboard players set @a[scores={int=9..}] int 0