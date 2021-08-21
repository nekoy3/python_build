execute @e[tag=select] ~ ~ ~ fill -84 248 -117 -84 248 -105 air 0 replace readstone_block
execute @e[tag=select] ~ ~ ~ titleraw @a title {"rawtext": [{"text":"*§eAZI §eServer*"}]}
execute @e[tag=select] ~ ~ ~ gamemode a @a[m=s]
execute @e[tag=select] ~ ~ ~ tp @a[m=a] 0 10 0
execute @e[tag=select] ~ ~ ~ tag * remove red
execute @e[tag=select] ~ ~ ~ tag * remove blue 
execute @e[tag=select] ~ ~ ~ tag * remove purple
execute @e[tag=select] ~ ~ ~ tag * remove oni
execute @e[tag=select] ~ ~ ~ tag * remove hunter
execute @e[tag=select] ~ ~ ~ scoreboard objectives setdisplay sidebar
execute @e[tag=select] ~ ~ ~ setblock -76 248 -120 redstone_block

#これは一度だけ実行する為のfunctionです。最終行のsetblockでazi/resetの連続実行を開始します。
#