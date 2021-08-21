#ステージcloneするためのarmorスタンド(clone/clone2)を初期視点に移動させます。その後上下に移動させつつcloneすることでエリアを構築します。
#sn_area2=tick毎加算の時間制御 sn_area=0.5秒毎に加算される。ステージclone時に間隔を作り負荷を軽減する。パルスは9。
#スコアはselectが所持し、制御する。

execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ 45 ~
scoreboard players add @e[tag=select] sn_area2 1
scoreboard players set @e[tag=select] s10 10
scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
scoreboard players operation @e[tag=select] sn_area %= @e[tag=select] s10
execute @e[tag=select,scores={sn_area=9}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ ~1 ~
#-30 y -125 はステージ内座標を指す。yは元ステージとclone先ゲームエリアとの相対座標を記述する。
execute @e[tag=clone2] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-39 -125
#sn_area2はcloneする(y軸ブロックの数+α)*10の値とする。tag=areacreate_resetは終了トリガー（値を毎回変更するのが面倒なので）
execute @e[tag=select,scores={sn_area2=170..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
#RSブロックの削除
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ fill -74 249 -101 -74 250 -95 air
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d砂漠ステージ§bです!!"}]}
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ setblock -78 249 -98 air
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset
