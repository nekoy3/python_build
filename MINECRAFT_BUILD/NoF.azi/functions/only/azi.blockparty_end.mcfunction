#sys.rank関数と連動/経験値レベルをr_expに加算しリセット
execute @a[scores={nmf.xp_score=1..}] ~ ~ ~ scoreboard players operation @s r_exp += @s nmf.xp_score
xp -100000l @a
#移動
tp @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] 0 7 0
#リセット
setblock -76 248 -120 redstone_block
setblock -59 248 -117 air
#人数検知バグ対処
scoreboard players add end score 1
#いろいろなスコアのリセット
setblock -58 248 -121 redstone_block
scoreboard objectives remove blockparty
