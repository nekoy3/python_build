scoreboard objectives add random dummy
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
summon minecraft:armor_stand ~ ~5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["randomA.rnumber_60evhygo"]}
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6] random 0
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 0
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 1
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 2
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 3
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 4
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 5
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 6
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 7
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 8
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 9
scoreboard players set @e[tag=randomA.rnumber_60evhygo,dy=6,scores={random=0},limit=1,sort=random] random 10
scoreboard players operation __rnumber_60evhygo__ random = @e[tag=randomA.rnumber_60evhygo,dy=6,sort=random,limit=1] random
kill @e[tag=randomA.rnumber_60evhygo]
scoreboard players operation @e[tag=select] random = __rnumber_60evhygo__ random
scoreboard players reset __rnumber_60evhygo__ random