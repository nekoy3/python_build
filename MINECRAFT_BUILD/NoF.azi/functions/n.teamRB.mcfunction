#スコアボード追加
scoreboard objectives remove sb.team 
scoreboard objectives add sb.team dummy Team_Number
#スコア設定[r=5]
scoreboard players set @a sb.team 0
#チーム分け 20人まで対応
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 10
scoreboard players set @r[r=5,scores={sb.team=0}] sb.team 77
#タグ付与
tag @a[scores={sb.team=10}] add red
tag @a[scores={sb.team=77}] add blue
#通知
execute @a[tag=red] ~ ~ ~ say §l§e @s §rは§cRedチーム §rです！！！！！
execute @a[tag=blue] ~ ~ ~ say §l§e @s §rは§bBlueチーム §rです！！！！！
tellraw @a {"rawtext": [{"text":"\n\n\n"}]}
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §cRedチームは§l§e10§r§c番として識別されます。
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §cRed Team[10]:§e[ @a[tag=red] ]
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §bBlueチームは§l§e77§r§b番として識別されます。
execute @a[name="Nekoyama 030330"] ~ ~ ~ say §bBlue Team[77]:§e[ @a[tag=blue] ]
scoreboard objectives setdisplay belowname sb.team