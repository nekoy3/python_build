#######
scoreboard players add @e[tag=select] cl 1
execute @e[tag=select,scores={cl=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cステージの初期化を開始します。"}]}

execute @e[tag=select,scores={cl=5}] ~ ~ ~ summon armor_stand ~ ~100 ~
execute @e[tag=select,scores={cl=5}] ~ ~100 ~ tag @e[type=armor_stand,c=1] add temp
execute @e[tag=select,scores={cl=5}] ~ ~ ~ scoreboard players operation @e[tag=temp] cl = @s cl
execute @e[tag=temp,scores={cl=5}] ~ ~ ~ kill @e[tag=!temp,type=armor_stand]
execute @e[tag=temp,scores={cl=5}] ~ ~ ~ function azi/object.manage
execute @e[tag=temp,scores={cl=5}] ~ ~ ~ scoreboard players operation @e[tag=select] cl = @s cl
execute @e[tag=select,scores={cl=5}] ~ ~ ~ kill @e[tag=temp]

#execute @e[tag=select,scores={cl=50}] ~ ~ ~ fill -74 249 -101 -75 251 -95 air
#execute @e[tag=select,scores={cl=50}] ~ ~ ~ setblock -78 249 -98 air
#execute @e[tag=select,scores={cl=50}] ~ ~ ~ scoreboard players reset @s sn_area
#execute @e[tag=select,scores={cl=50}] ~ ~ ~ scoreboard players reset @s sn_area2
#execute @e[tag=select,scores={cl=50}] ~ ~ ~ kill @e[tag=clear]
#execute @e[tag=select,scores={cl=50}] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ tp @s ~ 65 ~
#execute @e[tag=select,scores={cl=1..650}] -30 ~ -125 execute @e[tag=clear,y=6,dy=251] ~ ~ ~ tp @s ~ ~-0.1 ~
#execute @e[tag=select,scores={cl=1..650}] -30 ~ -125 execute @e[tag=clear,y=6,dy=-2] ~ ~ ~ tp @s ~ 57 ~

execute @e[tag=select,scores={cl=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§c試験モード-高速初期化"}]}
execute @e[tag=select,scores={cl=5..}] ~ ~ ~ scoreboard players operation @s cl2 = @s cl
execute @e[tag=select,scores={cl=5..}] ~ ~ ~ scoreboard players operation @s cl2 %= s5 s5
execute @e[tag=select,scores={cl=5}] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ tp @s ~ 95 ~
execute @e[tag=select,scores={cl=5..,cl2=0}] -30 ~ -125 execute @e[tag=clear,y=4,dy=251] ~ ~ ~ tp @s ~ ~-4 ~
execute @e[tag=select,scores={cl=5..,cl2=0}] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ fill ~50 ~ ~50 ~ ~5 ~ air
execute @e[tag=select,scores={cl=5..}] ~ ~ ~ kill @e[type=!armor_stand,type=!player]

execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players operation @s cl2 = @s cl
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players operation @s cl2 %= s5 s5
execute @e[tag=select,scores={cl=1..1000,cl2=0}] ~ ~ ~ execute @e[tag=clear] ~ ~ ~ fill ~50 ~-2 ~50 ~ ~ ~ air

execute @e[tag=select,scores={cl=160..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cステージの初期化が完了しました。"}]}
execute @e[tag=select,scores={cl=160..}] ~ ~ ~ setblock -76 248 -120 air
execute @e[tag=select,scores={cl=1..160}] ~ ~ ~ setblock ~ ~-1 ~ air
execute @e[tag=select,scores={cl=160..}] ~ ~ ~ fill 20 3 -125 -30 3 -75 bedrock
execute @e[tag=select,scores={cl=160..}] ~ ~ ~ setblock 0 4 -16 air
execute @e[tag=select,scores={cl=160..}] ~ ~ ~ scoreboard players reset @s cl

execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * sn
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * sn2
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard objectives setdisplay sidebar
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ setblock ~ ~-1 ~ air
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ clear @a[m=!c]
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ tag @s remove phase.end
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * health
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset @e[tag=clear] cl
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset @e[tag=clear] sn
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * totem
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * oni
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * hunter
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ scoreboard players reset * sb.team
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ tag * remove testmode
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ gamerule pvp false
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ gamemode a @a[m=s]
execute @e[tag=select,scores={cl=1..1000}] ~ ~ ~ effect @e[tag=clear] invisibility 0 0 true
execute @e[tag=select,scores={cl=500}] ~ ~ ~ setblock -76 248 -120 air


