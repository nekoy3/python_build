#スコアボード追加
scoreboard objectives remove sb.team 
scoreboard objectives add sb.team dummy Team_Number
#スコア設定[r=5]
scoreboard players set @a sb.team 0
#チーム分け 20人まで対応
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 14
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 45
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 81
#タグ付与
tag @a[scores={sb.team=14}] add purple
tag @a[scores={sb.team=45}] add blue
tag @a[scores={sb.team=81}] add red
#通知
execute @a[tag=purple] ~ ~ ~ say §l§e @s §rは§dPurpleチーム §rです！！！！！
execute @a[tag=blue] ~ ~ ~ say §l§e @s §rは§bBlueチーム §rです！！！！！
execute @a[tag=red] ~ ~ ~ say §l§e @s §rは§cRedチーム §rです！！！！！
tellraw @a {"rawtext": [{"text":"\n\n\n"}]}
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §dPurpleチームは§l§e14§r§d番として識別されます。
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §dPurple Team[14]:§e[ @a[tag=purple] ]
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §bBlueチームは§l§e45§r§b番として識別されます。
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §bBlue Team[45]:§e[ @a[tag=blue] ]
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §cRedチームは§l§e81§r§c番として識別されます。
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §cRed Team[81]:§e[ @a[tag=red] ]
scoreboard objectives setdisplay belowname sb.team