#管理用アマスタを召喚
summon armor_stand ~ ~10 ~
tag @e[c=1,type=armor_stand,y=~10] add objectsave
scoreboard players add @e[tag=objectsave] object.save 0
#selectオブジェクト
execute @e[tag=select] ~ ~ ~ scoreboard players add @e[tag=objectsave] object.save 1
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ summon armor_stand -84 249 -117
execute @e[tag=objectsave,scores={object.save=0}] -84 249 -117 tag @e[c=1,type=armor_stand] add select
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cObject reset - TAG:§aselect"}]}

execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ kill @e[tag=select]
execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§eObject error - TAG:§aselect"}]}

scoreboard players set @e[tag=objectsave] object.save 0
#cloneオブジェクト
execute @e[tag=clone] ~ ~ ~ scoreboard players add @e[tag=objectsave] object.save 1
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ summon armor_stand -85 248 -125
execute @e[tag=objectsave,scores={object.save=0}] -85 248 -125 tag @e[c=1,type=armor_stand] add clone
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cObject reset - TAG:§aclone (1)"}]}

execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ kill @e[tag=clone]
execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§eObject error - TAG:§aclone(1)"}]}

scoreboard players set @e[tag=objectsave] object.save 0
#clone2オブジェクト
execute @e[tag=clone2] ~ ~ ~ scoreboard players add @e[tag=objectsave] object.save 1
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ summon armor_stand -85 248 -71
execute @e[tag=objectsave,scores={object.save=0}] -85 248 -71 tag @e[c=1,type=armor_stand] add clone2
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cObject reset - TAG:§aclone (2)"}]}

execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ kill @e[tag=clone2]
execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§eObject error - TAG:§aclone(2)"}]}

scoreboard players set @e[tag=objectsave] object.save 0
#clearオブジェクト
execute @e[tag=clear] ~ ~ ~ scoreboard players add @e[tag=objectsave] object.save 1
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ summon armor_stand -30 7 -125
execute @e[tag=objectsave,scores={object.save=0}] -30 7 -125 tag @e[c=1,type=armor_stand] add clear
execute @e[tag=objectsave,scores={object.save=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§cObject reset - TAG:§aclear"}]}

execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ kill @e[tag=clear]
execute @e[tag=objectsave,scores={object.save=2..}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§eObject error - TAG:§aclear"}]}

scoreboard players set @e[tag=objectsave] object.save 0

kill @e[tag=objectsave]






