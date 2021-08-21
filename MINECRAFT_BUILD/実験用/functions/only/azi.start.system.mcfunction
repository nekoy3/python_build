#ASSスコアボードを構築
scoreboard objectives add ASS dummy azistartsys

#selectのASSスコアを加算(毎tick  
scoreboard players add @e[tag=select] ASS 5

#GSスコアボードを構築
scoreboard objectives add GS dummy AZIServer

#GSをサイドバーに表示 - GSは見せるためのスコアボードを指すらしい
scoreboard objectives setdisplay sidebar GS

#1800スコアが固定で入るs1800スコアボードを構築 - ゲーム開始までのカウント初期値を指す
scoreboard objectives add s1800 dummy "1800"

#ASS_playerスコアボードを構築 - 
scoreboard objectives add ASS_player dummy count

#1800固定スコア
scoreboard players set s1800 s1800 1800

#gscのscoreスコアを1800とする
scoreboard players operation gsc score = s1800 s1800

#gscのscoreスコア1800とtick毎加算分のASSを減算しカウントダウンを行う　※重要 　結果はgsc scoreとする
scoreboard players operation gsc score -= @e[tag=select] ASS

#結果をサイドバー出力
scoreboard players operation "ゲーム開始まで..." GS = gsc score

###########################################################################################################

#スタート待機地点にいるプレイヤーがASS_player ASS_playerを加算 - プレイヤー人数を算出
execute @a[x=24,y=0,z=-72,dx=40,dy=50,dz=40] ~ ~ ~ scoreboard players add ASS_player ASS_player 1

#Players GSへプレイヤー人数(lasted)を代入する
scoreboard players operation Players GS = ASS_player ASS_player

#start_countスコアを構築
scoreboard objectives add start_count dummy AZIServer

#ゲーム開始までのカウントを基本エンティティ(select)へ代入する
scoreboard players operation  @e[tag=select] start_count = "ゲーム開始まで..." GS

#lastedのプレイヤー人数をリセットする
scoreboard players set ASS_player ASS_player 0

#ここからはカウントダウン終了後、本回路を起動させる文章

execute @e[tag=select,scores={ASS=1800}] ~ ~ ~ setblock ~ ~-1 ~ redstone_block
execute @e[tag=select,scores={ASS=1800}] ~ ~ ~ setblock 0 4 -16 diamond_block
execute @e[tag=select,scores={ASS=1800}] ~ ~ ~ tp @a[x=0,y=4,z=-17,r=10] 0 6 0
execute @e[tag=select,scores={ASS=1800}] ~ ~ ~ tp @a[x=24,y=0,z=-72,dx=40,dy=50,dz=40] -5 60 -98
execute @e[tag=select,scores={ASS=1800}] ~ ~ ~ scoreboard objectives remove GS
execute @e[tag=select,scores={ASS=1800}] ~ ~ ~ scoreboard objectives remove ASS

#?X?e?[?W @a[x=-30,y=4,z=125,dx=50,dy=1000,dz=50]

