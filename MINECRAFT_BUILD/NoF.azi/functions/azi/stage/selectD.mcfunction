#actNumは現在実行ステージ情報の保持を行う。終了時は0に設定しレッドストーンブロックを削除する。
#0..待機：１..乱数生成：2..ステージ生成：3..終了処理　必要でなければ省く。
scoreboard objectives add actNum dummy
scoreboard players add @e[tag=select] actNum 0
#RS入力時actNum=0と終了時に設定する。おそらく0時点で乱数生成しても問題はないが誤作動防止のため1段階で行う。
execute @e[tag=select,scores={actNum=..0}] ~ ~ ~ scoreboard players add @s actNum 1

#ステージをあらかじめ設定する場合は、「randomSelected」タグをselectｱﾏｽﾀに付与させてrandom値に任意の値を入れてからこの関数を実行する事。
execute @e[tag=select,scores={actNum=1}] ~ ~ ~ execute @s[tag=!randomSelected] ~ ~ ~ scoreboard players random @e[tag=select] random 1 11
execute @e[tag=select,scores={actNum=1}] ~ ~ ~ tag @s remove randomSelected
execute @e[tag=select,scores={actNum=1}] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§bStage generate is started."}]}
#デバッグ用
#execute @e[tag=select,scores={actNum=1}] ~ ~ ~ scoreboard players set @e[tag=select] random 2

execute @e[tag=select,scores={actNum=1}] ~ ~ ~ scoreboard players add @s actNum 1

##random1################################################################################################################
#ステージcloneするためのarmorスタンド(clone/clone2)を初期視点に移動させます。その後上下に移動させつつcloneすることでエリアを構築します。
#sn_area2=tick毎加算の時間制御 sn_area=0.5秒毎に加算される。ステージclone時に間隔を作り負荷を軽減する。パルスは1。
#スコアはselectが所持し、制御する。
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ 45 ~
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ ~1 ~
#-30 y -125 はステージ内座標を指す。yは元ステージとclone先ゲームエリアとの相対座標を記述する。
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-39 -125
#sn_area2はcloneする(y軸ブロックの数+α)*10の値とする。tag=areacreate_resetは終了トリガー（値を毎回変更するのが面倒なので）
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=85..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
#通知とステージ生成段階の終了※areacreate_resetは一度の実行でタグ付与から削除まで行う。次tickへの引継ぎは行わない。
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d砂漠ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=1}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random2################################################################################################################
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ 110 ~
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-104 -125
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=160..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§dサーバーロビーステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=2}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random3################################################################################################################
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ 68 ~
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-64 -125
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=115..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d飛行船ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=3}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random4################################################################################################################
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ 92 ~
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-86 -125
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=85..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d村ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=4}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random5################################################################################################################
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ 37 ~
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone2] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-30 -125
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=30..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§dアスレチックステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=5}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random6################################################################################################################
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ 204 ~
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-200 -125
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=80..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d平原ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=6}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random7################################################################################################################
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ 148 ~
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-144 -125
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=125..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§dエンドステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=7}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random8################################################################################################################
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ 132 ~
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-128 -125
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=85..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§dネザーステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=8}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random9################################################################################################################
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ 115 ~
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-110 -125
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=75..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d密林ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=9}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random10################################################################################################################
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ 1 ~
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~2 -125
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=75..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d平原ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=10}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset

##random11################################################################################################################
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=10}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ 173 ~
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ scoreboard players add @e[tag=select] sn_area2 1
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ scoreboard players set @e[tag=select] s10 10
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area = @e[tag=select] sn_area2
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ scoreboard players operation @e[tag=select] sn_area %= s5 s5
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ tp @s ~ ~1 ~
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,scores={sn_area=1,sn_area2=10..}] ~ ~ ~ execute @e[tag=clone] ~ ~ ~ clone ~ ~ ~ ~50 ~ ~50 -30 ~-168 -125
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,scores={sn_area2=75..}] ~ ~ ~ tag @s add areacreate_reset
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players reset @s sn_area2
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§b今回のステージは§d都市ステージ§bです!!"}]}
execute @e[tag=select,scores={actNum=2,random=11}] ~ ~ ~ execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ scoreboard players add @s actNum 1
execute @e[tag=select,tag=areacreate_reset] ~ ~ ~ tag @s remove areacreate_reset


#actNum=3+初期化
execute @e[tag=select,scores={actNum=3}] ~ ~ ~ setblock -78 249 -98 air
execute @e[tag=select,scores={actNum=3}] ~ ~ ~ tellraw @a {"rawtext": [{"text":"§eStage generate is completed"}]}
execute @e[tag=select,scores={actNum=3}] ~ ~ ~ scoreboard players set @e[tag=select] actNum -5

