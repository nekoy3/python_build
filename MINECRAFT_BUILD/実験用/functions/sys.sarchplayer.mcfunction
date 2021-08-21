#プレイヤーの人数を見返りとして出力します。見返りはsarchplayerのsarchplayerです
scoreboard objectives add sarchplayer dummy player
scoreboard objectives add sarchplayer.lasted dummy lasted
#@aに引数をかけることで範囲をしていできます
execute @a ~ ~ ~ scoreboard players add sarchplayer sarchplayer.lasted 1
scoreboard operation sarchplayer sarchplayer = sarchplayer sarchplayer.lasted
scoreboard players set sarchplayer sarchplayer.lasted 0