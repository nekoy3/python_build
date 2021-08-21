#スコア作成
scoreboard objectives remove player_num
scoreboard objectives add player_num dummy number
scoreboard objectives setdisplay sidebar player_num
#実行座標固定
summon armor_stand ~ ~ ~ 
tag @e[c=1,type=armor_stand] add num_tag
#スコア0加算
scoreboard players add @a[r=5] player_num 0
#数順指定
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
execute @r[c=1,r=5,scores={player_num=0}] ~ ~ ~ scoreboard players add player_num player_num 1
scoreboard players operation @r[c=1,r=5,scores={player_num=0}] player_num = player_num player_num
scoreboard players reset player_num
#後処理
kill @e[tag=num_tag]
scoreboard objectives remove player_num2
#通知
title @a[scores={player_num=0}] actionbar Your haven`t player number.
title @a[scores={player_num=1}] actionbar Your number is 1
title @a[scores={player_num=2}] actionbar Your number is 2
title @a[scores={player_num=3}] actionbar Your number is 3
title @a[scores={player_num=4}] actionbar Your number is 4
title @a[scores={player_num=5}] actionbar Your number is 5
title @a[scores={player_num=6}] actionbar Your number is 6
title @a[scores={player_num=7}] actionbar Your number is 7
title @a[scores={player_num=8}] actionbar Your number is 8
title @a[scores={player_num=9}] actionbar Your number is 9
title @a[scores={player_num=10}] actionbar Your number is 10
title @a[scores={player_num=11}] actionbar Your number is 11
title @a[scores={player_num=12}] actionbar Your number is 12
title @a[scores={player_num=13}] actionbar Your number is 13
title @a[scores={player_num=14}] actionbar Your number is 14
title @a[scores={player_num=15}] actionbar Your number is 15
title @a[scores={player_num=16}] actionbar Your number is 16
title @a[scores={player_num=17}] actionbar Your number is 17
title @a[scores={player_num=18}] actionbar Your number is 18
title @a[scores={player_num=19}] actionbar Your number is 19
title @a[scores={player_num=20}] actionbar Your number is 20
