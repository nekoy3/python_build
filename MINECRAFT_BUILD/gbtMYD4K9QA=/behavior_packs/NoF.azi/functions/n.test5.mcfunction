#ボード作成
scoreboard objectives add health dummy health_point
scoreboard objectives add nmf.xp_score dummy "Player Level"
scoreboard objectives add nmf.xp_lasted dummy xp_score
#警告メッセ
execute @a[scores={health=..-5}] ~ ~ ~ say Score Minimum over error from health / Auto repair comprete, Report this to the operator when this message is displayed again
execute @a[scores={health=..-5}] ~ ~ ~ scoreboard players set @s health 0                              [Code]nmfE/HPmin
execute @a[scores={nmf.score=..-1}] ~ ~ ~ say Score Minimum over error from nmf.score / Auto repair comprete, Report this to the operator when this message is displayed again
execute @a[scores={nmf.score=..-1}] ~ ~ ~ scoreboard players set @s nmf.score 0                              [Code]nmfE/LVmin

execute @a[scores={health=20..}] ~ ~ ~ say Score Maximum over error from health / Auto repair comprete, Report this to the operator when this message is displayed again
execute @a[scores={health=20..}] ~ ~ ~ scoreboard players set @s health 10                              [Code]nmfE/HPmax
execute @a[scores={nmf.score=120..}] ~ ~ ~ say Score Maximum over error from nmf.score / Auto repair comprete, Report this to the operator when this message is displayed again
execute @a[scores={nmf.score=120..}] ~ ~ ~ scoreboard players set @s nmf.score 100                              [Code]nmfE/LVmax
#スコア本部
scoreboard players add @a[lm=0] nmf.xp_lasted 0
scoreboard players add @a[lm=1] nmf.xp_lasted 1
scoreboard players add @a[lm=2] nmf.xp_lasted 1
scoreboard players add @a[lm=3] nmf.xp_lasted 1
scoreboard players add @a[lm=4] nmf.xp_lasted 1
scoreboard players add @a[lm=5] nmf.xp_lasted 1
scoreboard players add @a[lm=6] nmf.xp_lasted 1
scoreboard players add @a[lm=7] nmf.xp_lasted 1
scoreboard players add @a[lm=8] nmf.xp_lasted 1
scoreboard players add @a[lm=9] nmf.xp_lasted 1
scoreboard players add @a[lm=10] nmf.xp_lasted 1
scoreboard players add @a[lm=11] nmf.xp_lasted 1
scoreboard players add @a[lm=12] nmf.xp_lasted 1
scoreboard players add @a[lm=13] nmf.xp_lasted 1
scoreboard players add @a[lm=14] nmf.xp_lasted 1
scoreboard players add @a[lm=15] nmf.xp_lasted 1
scoreboard players add @a[lm=16] nmf.xp_lasted 1
scoreboard players add @a[lm=17] nmf.xp_lasted 1
scoreboard players add @a[lm=18] nmf.xp_lasted 1
scoreboard players add @a[lm=19] nmf.xp_lasted 1
scoreboard players add @a[lm=20] nmf.xp_lasted 1
scoreboard players add @a[lm=21] nmf.xp_lasted 1
scoreboard players add @a[lm=22] nmf.xp_lasted 1
scoreboard players add @a[lm=23] nmf.xp_lasted 1
scoreboard players add @a[lm=24] nmf.xp_lasted 1
scoreboard players add @a[lm=25] nmf.xp_lasted 1
scoreboard players add @a[lm=26] nmf.xp_lasted 1
scoreboard players add @a[lm=27] nmf.xp_lasted 1
scoreboard players add @a[lm=28] nmf.xp_lasted 1
scoreboard players add @a[lm=29] nmf.xp_lasted 1
scoreboard players add @a[lm=30] nmf.xp_lasted 1
scoreboard players add @a[lm=31] nmf.xp_lasted 1
scoreboard players add @a[lm=32] nmf.xp_lasted 1
scoreboard players add @a[lm=33] nmf.xp_lasted 1
scoreboard players add @a[lm=34] nmf.xp_lasted 1
scoreboard players add @a[lm=35] nmf.xp_lasted 1
scoreboard players add @a[lm=36] nmf.xp_lasted 1
scoreboard players add @a[lm=37] nmf.xp_lasted 1
scoreboard players add @a[lm=38] nmf.xp_lasted 1
scoreboard players add @a[lm=39] nmf.xp_lasted 1
scoreboard players add @a[lm=40] nmf.xp_lasted 1
scoreboard players add @a[lm=41] nmf.xp_lasted 1
scoreboard players add @a[lm=42] nmf.xp_lasted 1
scoreboard players add @a[lm=43] nmf.xp_lasted 1
scoreboard players add @a[lm=44] nmf.xp_lasted 1
scoreboard players add @a[lm=45] nmf.xp_lasted 1
scoreboard players add @a[lm=46] nmf.xp_lasted 1
scoreboard players add @a[lm=47] nmf.xp_lasted 1
scoreboard players add @a[lm=48] nmf.xp_lasted 1
scoreboard players add @a[lm=49] nmf.xp_lasted 1
scoreboard players add @a[lm=50] nmf.xp_lasted 1
scoreboard players add @a[lm=51] nmf.xp_lasted 1
scoreboard players add @a[lm=52] nmf.xp_lasted 1
scoreboard players add @a[lm=53] nmf.xp_lasted 1
scoreboard players add @a[lm=54] nmf.xp_lasted 1
scoreboard players add @a[lm=55] nmf.xp_lasted 1
scoreboard players add @a[lm=56] nmf.xp_lasted 1
scoreboard players add @a[lm=57] nmf.xp_lasted 1
scoreboard players add @a[lm=58] nmf.xp_lasted 1
scoreboard players add @a[lm=59] nmf.xp_lasted 1
scoreboard players add @a[lm=60] nmf.xp_lasted 1
scoreboard players add @a[lm=61] nmf.xp_lasted 1
scoreboard players add @a[lm=62] nmf.xp_lasted 1
scoreboard players add @a[lm=63] nmf.xp_lasted 1
scoreboard players add @a[lm=64] nmf.xp_lasted 1
scoreboard players add @a[lm=65] nmf.xp_lasted 1
scoreboard players add @a[lm=66] nmf.xp_lasted 1
scoreboard players add @a[lm=67] nmf.xp_lasted 1
scoreboard players add @a[lm=68] nmf.xp_lasted 1
scoreboard players add @a[lm=69] nmf.xp_lasted 1
scoreboard players add @a[lm=70] nmf.xp_lasted 1
scoreboard players add @a[lm=71] nmf.xp_lasted 1
scoreboard players add @a[lm=72] nmf.xp_lasted 1
scoreboard players add @a[lm=73] nmf.xp_lasted 1
scoreboard players add @a[lm=74] nmf.xp_lasted 1
scoreboard players add @a[lm=75] nmf.xp_lasted 1
scoreboard players add @a[lm=76] nmf.xp_lasted 1
scoreboard players add @a[lm=77] nmf.xp_lasted 1
scoreboard players add @a[lm=78] nmf.xp_lasted 1
scoreboard players add @a[lm=79] nmf.xp_lasted 1
scoreboard players add @a[lm=80] nmf.xp_lasted 1
scoreboard players add @a[lm=81] nmf.xp_lasted 1
scoreboard players add @a[lm=82] nmf.xp_lasted 1
scoreboard players add @a[lm=83] nmf.xp_lasted 1
scoreboard players add @a[lm=84] nmf.xp_lasted 1
scoreboard players add @a[lm=85] nmf.xp_lasted 1
scoreboard players add @a[lm=86] nmf.xp_lasted 1
scoreboard players add @a[lm=87] nmf.xp_lasted 1
scoreboard players add @a[lm=88] nmf.xp_lasted 1
scoreboard players add @a[lm=89] nmf.xp_lasted 1
scoreboard players add @a[lm=90] nmf.xp_lasted 1
scoreboard players add @a[lm=91] nmf.xp_lasted 1
scoreboard players add @a[lm=92] nmf.xp_lasted 1
scoreboard players add @a[lm=93] nmf.xp_lasted 1
scoreboard players add @a[lm=94] nmf.xp_lasted 1
scoreboard players add @a[lm=95] nmf.xp_lasted 1
scoreboard players add @a[lm=96] nmf.xp_lasted 1
scoreboard players add @a[lm=97] nmf.xp_lasted 1
scoreboard players add @a[lm=98] nmf.xp_lasted 1
scoreboard players add @a[lm=99] nmf.xp_lasted 1
scoreboard players add @a[lm=100] nmf.xp_lasted 1
#安定化-安定経験値レベルnmf.xp_lasted
execute @a ~ ~ ~ scoreboard players operation @s nmf.xp_score = @s nmf.xp_lasted
scoreboard players reset @a nmf.xp_lasted
xp -1l @a[lm=101]
xp -1l @a[lm=101]
xp -1l @a[lm=101]
xp -1l @a[lm=101]
xp -1l @a[lm=101]
scoreboard players add @a[scores={health=11..}] health -1
scoreboard players add @a[scores={health=11..}] health -1
scoreboard players add @a[scores={health=11..}] health -1
scoreboard players add @a[scores={health=11..}] health -1
scoreboard players add @a[scores={health=11..}] health -1

scoreboard players set @a[scores={health=..-1}] health 0
scoreboard players set @a[scores={health=..-1}] health 0
scoreboard players set @a[scores={health=..-1}] health 0
scoreboard players set @a[scores={health=..-1}] health 0
scoreboard players set @a[scores={health=..-1}] health 0
##通知システム

#sys.info.1-3へ移動しました

#表記整理
scoreboard players add @a health 0









