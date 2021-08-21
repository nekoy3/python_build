#プレイヤーの人数を見返りとして出力します。見返りはsarchplayerのsarchplayerです。azi鯖のステージプレイヤー検知専用
scoreboard objectives add sarchplayer dummy player
scoreboard objectives add sarchplayer.last dummy last
#@aに引数をかけることで範囲をしていできます
execute @a[x=-31,y=-40,z=-126,dx=52,dy=1000,dz=52,m=!c] ~ ~ ~ scoreboard players add sarchplayer sarchplayer.last 1
scoreboard players operation sarchplayer sarchplayer = sarchplayer sarchplayer.last
scoreboard players set sarchplayer sarchplayer.last 0

#red/purple/blueの人数を出力します。s.redのsarchplayerとs.blueのsarchplayerとs.purpleのsarchplayerです
execute @a[x=-30,y=-40,z=-125,dx=50,dy=1000,dz=50,m=!c,tag=red] ~ ~ ~ scoreboard players add sarchplayer.r sarchplayer.last 1
execute @a[x=-30,y=-40,z=-125,dx=50,dy=1000,dz=50,m=!c,tag=blue] ~ ~ ~ scoreboard players add sarchplayer.b sarchplayer.last 1
execute @a[x=-30,y=-40,z=-125,dx=50,dy=1000,dz=50,m=!c,tag=purple] ~ ~ ~ scoreboard players add sarchplayer.p sarchplayer.last 1

scoreboard players operation s.red sarchplayer = sarchplayer.r sarchplayer.last
scoreboard players operation s.blue sarchplayer = sarchplayer.b sarchplayer.last
scoreboard players operation s.purple sarchplayer = sarchplayer.p sarchplayer.last

scoreboard players set sarchplayer.r sarchplayer.last 0
scoreboard players set sarchplayer.b sarchplayer.last 0
scoreboard players set sarchplayer.p sarchplayer.last 0

