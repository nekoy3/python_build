scoreboard objectives add bosstime dummy bosstime
scoreboard objectives add bosstime2 dummy bosstime2
scoreboard objectives add bosstime3 dummy bosstime3
scoreboard objectives add en0 dummy en0
scoreboard players operation @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] en0 = @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] bosstime
#scoreboard players operation @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] en0 %= s5 s5 
scoreboard players set @e[type=!player,tag=bosscreeper] en0 0
scoreboard objectives add s40 dummy s40
scoreboard players set s40 s40 40
scoreboard objectives add s5 dummy s5
scoreboard players set s5 s5 5
scoreboard objectives add s100 dummy s100
scoreboard players set s100 s100 100
scoreboard objectives add s20 dummy s20
scoreboard players set s20 s20 20
scoreboard players add @e[type=!player,tag=bosscreeper] bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=0..}] ~ ~50 ~ execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^ ~ 0
#タグはbosscreeperで発動

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 私と戦うつもりか？"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ summon armor_stand ~ ~1000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~1000 ~ tag @e[c=1,type=armor_stand] add bce
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~1000 ~ execute @e[c=1,type=armor_stand,tag=bce] ~ ~ ~ tp @s ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~1000 ~ execute @e[c=1,type=armor_stand,tag=bce] ~ ~ ~ tp @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~-996 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ effect @s health_boost 10000000 144 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ effect @s instant_damage 10 255 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ effect @s regeneration 1000000 2 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ effect @s invisibility 1000000 255 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ replaceitem entity @e[c=1,type=zombie] slot.armor.head 0 skull 1 4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ effect @s fire_resistance 1000000 255 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ effect @s resistance 100 255 true

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~-4 ~ execute @a[r=1.5] ~ ~ ~ playsound item.shield.block @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~-4 ~ effect @a[r=2] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~-4 ~ effect @a[r=2] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~-4 ~ effect @a[r=1.5] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~-4 ~ effect @a[r=1.5] instant_damage 1 2

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~1.5 ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~-1.5 ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~ ~-4 ~1.5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~ ~-4 ~-1.5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~1.25 ~-4 ~1.25
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~-1.25 ~-4 ~1.25
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~-1.25 ~-4 ~-1.25
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~1.25 ~-4 ~-1.25

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~1.5 ~-3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~-1.5 ~-3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~-3 ~1.5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~-3 ~-1.5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~1.25 ~-3 ~1.25
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~-1.25 ~-3 ~1.25
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~-1.25 ~-3 ~-1.25
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:balloon_gas_particle ~1.25 ~-3 ~-1.25

execute @e[type=!player,tag=bosscreeper] ~ ~ ~ tp ~ ~ ~ facing @p
execute @e[type=!player,tag=bce] ~ ~ ~ tp ~ ~ ~ facing @p
#クリーパー死亡時の処理
execute @e[c=1,type=armor_stand,tag=bce] ~ ~ ~ scoreboard players set @s bosstime 0
execute @e[c=1,type=armor_stand,tag=bce] ~ ~ ~ execute @e[type=!player,tag=bosscreeper] ~ ~ ~ scoreboard players set @e[dy=10000,c=1,type=armor_stand,tag=bce] bosstime 1
#execute @e[c=1,type=armor_stand,tag=bce,scores={bosstime=0}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> チッ..."}]}
execute @e[c=1,type=armor_stand,tag=bce,scores={bosstime=0}] ~ ~ ~ particle minecraft:huge_explosion_lab_misc_emitter ~ ~-1000 ~
execute @e[c=1,type=armor_stand,tag=bce,scores={bosstime=0}] ~ ~ ~ particle minecraft:huge_explosion_lab_misc_emitter ~ ~-999 ~
execute @e[c=1,type=armor_stand,tag=bce,scores={bosstime=0}] ~ ~ ~ particle minecraft:huge_explosion_lab_misc_emitter ~ ~-1001 ~
execute @e[c=1,type=armor_stand,tag=bce,scores={bosstime=0}] ~ ~ ~ execute @a[r=50] ~ ~ ~ playsound random.levelup @s
execute @e[c=1,type=armor_stand,tag=bce,scores={bosstime=0}] ~ ~ ~ kill @s



execute @e[c=1,type=armor_stand,tag=bce3] ~ ~ ~ scoreboard players set @s bosstime 0
execute @e[c=1,type=armor_stand,tag=bce3] ~ ~ ~ execute @e[type=!player,tag=bosscreeper] ~ ~ ~ scoreboard players set @e[c=1,type=armor_stand,tag=bce3] bosstime 1
execute @e[c=1,type=armor_stand,tag=bce3,scores={bosstime=0}] ~ ~ ~ kill @s

execute @e[c=1,type=armor_stand,tag=hadoc] ~ ~ ~ scoreboard players set @s bosstime 0
execute @e[c=1,type=armor_stand,tag=hadoc] ~ ~ ~ execute @e[type=!player,tag=bosscreeper] ~ ~ ~ scoreboard players set @e[type=armor_stand,tag=hadoc] bosstime 1
execute @e[c=1,type=armor_stand,tag=hadoc,scores={bosstime=0}] ~ ~ ~ kill @s

execute @e[c=1,type=armor_stand,tag=ch.] ~ ~ ~ scoreboard players set @s bosstime3 0
execute @e[c=1,type=armor_stand,tag=ch.] ~ ~ ~ execute @e[type=!player,tag=bosscreeper] ~ ~ ~ scoreboard players set @e[type=armor_stand,tag=ch.] bosstime3 1
execute @e[c=1,type=armor_stand,tag=ch.,scores={bosstime3=0}] ~ ~ ~ kill @s

execute @e[c=1,type=armor_stand,tag=rsh] ~ ~ ~ scoreboard players set @s bosstime3 0
execute @e[c=1,type=armor_stand,tag=rsh] ~ ~ ~ execute @e[type=!player,tag=bosscreeper] ~ ~ ~ scoreboard players set @e[type=armor_stand,tag=rsh] bosstime3 1
execute @e[c=1,type=armor_stand,tag=rsh,scores={bosstime3=0}] ~ ~ ~ kill @s
#

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ summon lightning_bolt
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~5 ~-3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~-5 ~-3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~ ~-3 ~5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~ ~-3 ~-5

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~4 ~-3 ~4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~4 ~-3 ~-4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~-4 ~-3 ~4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~ ~ particle minecraft:portal_directional ~-4 ~-3 ~-4

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~5 ~-3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~-5 ~-3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~ ~-3 ~5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~ ~-3 ~-5

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~4 ~-3 ~4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~4 ~-3 ~-4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~-4 ~-3 ~4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..999999,en0=0}] ~ ~2 ~ particle minecraft:portal_directional ~-4 ~-3 ~-4

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~ ~ scoreboard players operation @s bosstime2 = @s bosstime
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~ ~ scoreboard players operation @s bosstime2 %= s100 s100

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~ ~ summon armor_stand ~ ~2000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2}] ~ ~2000 ~ tag @e[c=1,type=armor_stand] add bce2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~ ~ spreadplayers ~ ~ 5 50 @e[c=1,type=armor_stand,tag=bce2] 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..}] ~ ~2000 ~ execute @e[c=1,type=armor_stand,tag=bce2] ~ ~ ~ tp @s ~ ~2000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2..,bosstime2=0}] ~ ~ ~ execute @e[c=1,type=armor_stand,tag=bce2] ~ ~ ~ summon lightning_bolt ~ ~-2000 ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §e「雷天・反撃結界」\n§rランダムで落雷し、bossに近づきすぎると攻撃を与える。"}]}

scoreboard objectives add arrow.s dummy arrow.s
scoreboard players operation @e[type=!player,tag=bosscreeper,scores={bosstime=50..}] arrow.s = @e[type=!player,tag=bosscreeper,scores={bosstime=50..}] bosstime
scoreboard objectives add s5 dummy s5
scoreboard players set s5 s5 5
scoreboard players operation @e[type=!player,tag=bosscreeper,scores={bosstime=50..}] arrow.s %= s5 s5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=50..,arrow.s=0}] ~ ~ ~ execute @e[rm=20,r=100,type=arrow] ~ ~ ~ tp @s ~ ~ ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=50}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §e「結界」\n§r弓矢の動作を阻害する。"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600}] ~ ~ ~ scoreboard players operation @s bosstime2 = @s bosstime
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600}] ~ ~ ~ scoreboard players operation @s bosstime2 %= s40 s40

execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=39}] ~ ~ ~ kill @e[tag=ef.a]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=39}] ~ ~ ~ summon armor_stand ~ ~1450 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=39}] ~ ~1450 ~ tag @e[type=armor_stand,c=1] add ef.a
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=39}] ~ ~ ~ execute @e[tag=ef.a] ~ ~ ~ tp @s ^ ^ ^-5 facing @e[tag=bosscreeper]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=39}] ~ ~ ~ execute @e[tag=ef.a] ~ ~ ~ tp @s ^ ^ ^5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600}] ~ ~ ~ execute @e[tag=ef.a] ~ ~ ~ tp @s ~ ~ ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=601}] ~ ~ ~ kill @e[tag=ef.a]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=16}] ~ ~ ~ summon evocation_fang ^^0.2^2 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=14}] ~ ~ ~ summon evocation_fang ^^0.3^3 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=12}] ~ ~ ~ summon evocation_fang ^^0.4^4 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=10}] ~ ~ ~ summon evocation_fang ^^0.5^5 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=8}] ~ ~ ~ summon evocation_fang ^^0.6^6 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=6}] ~ ~ ~ summon evocation_fang ^^0.7^7 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=4}] ~ ~ ~ summon evocation_fang ^^0.8^8 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=2}] ~ ~ ~ summon evocation_fang ^^0.9^9 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=0}] ~ ~ ~ summon evocation_fang ^^1^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=38}] ~ ~ ~ summon evocation_fang ^^0.9^11
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=36}] ~ ~ ~ summon evocation_fang ^^0.8^12
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=34}] ~ ~ ~ summon evocation_fang ^^0.7^13
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=32}] ~ ~ ~ summon evocation_fang ^^0.6^14
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=30}] ~ ~ ~ summon evocation_fang ^^0.5^15
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=28}] ~ ~ ~ summon evocation_fang ^^0.4^16
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=26}] ~ ~ ~ summon evocation_fang ^^0.3^17
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=24}] ~ ~ ~ summon evocation_fang ^^0.2^18
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=22}] ~ ~ ~ summon evocation_fang ^^0.3^19
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=20}] ~ ~ ~ summon evocation_fang ^^0.4^20
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=18}] ~ ~ ~ summon evocation_fang ^^0.5^21 


execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=16}] ~ ~-4 ~ summon evocation_fang ^^^2 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=14}] ~ ~-3 ~ summon evocation_fang ^^^3 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=12}] ~ ~-2 ~ summon evocation_fang ^^^4 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=10}] ~ ~-1 ~ summon evocation_fang ^^^5 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=8}] ~ ~0 ~ summon evocation_fang ^^^6 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=6}] ~ ~1 ~ summon evocation_fang ^^^7 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=4}] ~ ~2 ~ summon evocation_fang ^^^8 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=2}] ~ ~3 ~ summon evocation_fang ^^^9 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=0}] ~ ~4 ~ summon evocation_fang ^^^10 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=38}] ~ ~5 ~ summon evocation_fang ^^^11 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=36}] ~ ~6 ~ summon evocation_fang ^^^12 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=34}] ~ ~7 ~ summon evocation_fang ^^^13 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=32}] ~ ~6 ~ summon evocation_fang ^^^14 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=30}] ~ ~5 ~ summon evocation_fang ^^^15 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=28}] ~ ~4 ~ summon evocation_fang ^^^16 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=26}] ~ ~3 ~ summon evocation_fang ^^^17 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=24}] ~ ~2 ~ summon evocation_fang ^^^18 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=22}] ~ ~1 ~ summon evocation_fang ^^^19 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=20}] ~ ~0 ~ summon evocation_fang ^^^20 
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=18}] ~ ~-1 ~ summon evocation_fang ^^^22 


#execute @e[type=!player,tag=bosscreeper,scores={bosstime=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 結界には踏み入れさせねえ！！"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §e「クロスターミネーション」"}]}
#execute @e[type=!player,tag=bosscreeper,scores={bosstime=450}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 何、すぐに楽になれるさ"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=0}] ~ ~ ~ particle minecraft:evoker_spell ~ ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=0}] ~ ~-4 ~ execute @e[r=4.5,tag=!bosscreeper] ~ ~ ~ summon lightning_bolt
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=0}] ~ ~ ~ effect @s wither 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=300..600,bosstime2=0}] ~ ~ ~ execute @e[type=evocation_fang] ~ ~ ~ effect @e[r=1] wither 2 2 

execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ summon creeper ~5 ~2 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ summon creeper ~-5 ~2 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ summon creeper ~ ~2 ~5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ summon creeper ~ ~2 ~-5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ summon creeper ~ ~2 ~3
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~2 ~ tag @e[type=creeper,tag=!bosscreeper,c=5] add ch.
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ summon lightning_bolt ~ ~1 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ effect @s resistance 30 255 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700..900}] ~ ~ ~ execute @e[tag=ch.,type=creeper] ~ ~ ~ tp @s ^ ^ ^0.2 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900}] ~ ~ ~ kill @e[tag=ch.]

#execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 消し飛べ！！"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=700}] ~ ~ ~ execute @a[r=40] ~ ~ ~ playsound random.levelup @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=900}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 戦う気がないのか？\n§r一定範囲の外にいるプレイヤーに一定時間後爆発攻撃（直）を与える。\n範囲内で爆発を回避すれば毒付与のみで済む。"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900}] ~ ~ ~ execute @a[r=80] ~ ~ ~ playsound random.orb @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=901}] ~ ~ ~ summon armor_stand ~ ~3000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=901}] ~ ~3000 ~ tag @e[c=1,type=armor_stand] add bce3
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..,}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~ ~ tp @s ~ ~ ~ ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=900..}] ~ ~ ~ execute @e[tag=bce3] ~ ~-3004 ~ particle minecraft:balloon_gas_particle ^ ^ ^10

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1120}] ~ ~ ~ kill @e[tag=bce3]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §c「ディスタンスフレア」"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1000}] ~ ~-4 ~ effect @a[rm=10,r=50,m=!c] night_vision 10 10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1000}] ~ ~-4 ~ effect @a[rm=10,r=50,m=!c] blindness 10 10
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1000}] ~ ~-4 ~ effect @a[r=10,m=!c] poison 5 0 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1000}] ~ ~-4 ~ execute @a[r=50] ~ ~ ~ playsound random.anvil_land @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1120}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 爆ぜろ！"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1130}] ~ ~-4 ~ execute @a[r=50] ~ ~ ~ playsound random.levelup @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1140}] ~ ~ ~ execute @a[rm=10,r=50,m=!c] ~ ~ ~ summon ender_crystal ~ ~3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1140}] ~ ~ ~ execute @a[rm=10,r=50,m=!c] ~ ~ ~ summon arrow ~ ~3 ~

#execute @e[type=!player,tag=bosscreeper,scores={bosstime=1180}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 反重力斬撃！！！"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §5「リバースグラビティ」\n§r近づいたプレイヤーを空中に浮かして剣で殴る。"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ playsound random.levelup @a[r=50]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ summon armor_stand ~8 ~2 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ summon armor_stand ~-8 ~4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ summon armor_stand ~ ~6 ~8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ summon armor_stand ~ ~8 ~-8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~2 ~ tag @e[type=armor_stand,tag=!bosscreeper,tag=!bce,c=4] add ch.
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ replaceitem entity @s slot.weapon.mainhand 0 diamond_sword
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ effect @s resistance 30 255 true

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ scoreboard players operation @s bosstime2 = @s bosstime
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ scoreboard players operation @s bosstime2 %= s40 s40
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,bosstime2=0}] ~ ~ ~ execute @e[tag=ch.,tag=!bosscreeper] ~ ~ ~ tp @s ^ ^0 ^1.2 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,bosstime2=10}] ~ ~ ~ execute @e[tag=ch.,tag=!bosscreeper] ~ ~ ~ tp @s ^ ^ ^1.7 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,bosstime2=20}] ~ ~ ~ execute @e[tag=ch.,tag=!bosscreeper] ~ ~ ~ tp @s ^ ^ ^1.1 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,bosstime2=30}] ~ ~ ~ execute @e[tag=ch.,tag=!bosscreeper] ~ ~ ~ tp @s ^ ^ ^1.2 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ tp @s ^ ^ ^ facing @p

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ effect @a[r=5] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ effect @a[r=5] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ effect @a[r=1.75] instant_damage 1 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ playsound item.shield.block @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,en0=0}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ particle minecraft:balloon_gas_particle ~1 ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,en0=0}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ particle minecraft:balloon_gas_particle ~-1 ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,en0=0}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1600,en0=0}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~-1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1580}] ~ ~ ~ effect @e[r=15,tag=!bosscreeper] levitation 1 5
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200}] ~ ~ ~ execute @a[r=15,tag=!bosscreeper] ~ ~ ~ particle minecraft:huge_explosion_lab_misc_emitter ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1200..1205}] ~ ~ ~ execute @e[r=15,tag=!bosscreeper] ~ ~ ~ playsound random.anvil_land @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1600}] ~ ~ ~ execute @e[tag=ch.] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> ・・・"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1651}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §6「定速貫通弾」"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650}] ~ ~ ~ playsound random.levelup @a[r=50]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..}] ~ ~ ~ scoreboard players operation @s bosstime2 = @s bosstime
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..}] ~ ~ ~ scoreboard players operation @s bosstime2 %= s40 s40

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=0}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=0}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=0}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=0}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=0}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=2}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=2}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=2}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=2}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=2}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=4}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=4}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=4}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=4}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=4}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=6}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=6}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=6}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=6}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=6}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=8}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=8}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=8}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=8}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=8}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=10}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=10}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=10}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=10}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=10}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=12}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=12}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=12}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=12}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=12}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=14}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=14}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=14}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=14}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=14}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=16}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=16}] ~ ~50 ~ tag @e[c=1,type=armor_stand] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=16}] ~ ~50 ~ execute @e[tag=hadoc,c=1] ~ ~ ~ execute @p ~ ~ ~ tp @e[tag=hadoc,c=1] ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=16}] ~ ~50 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200,bosstime2=16}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2200}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^0.8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ effect @s invisibility 1 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ scoreboard players add @s bosstime2 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~execute @e[tag=hadoc,scores={bosstime2=60..}] ~ ~ ~ kill @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900,en0=0}] ~ ~ ~execute @e[tag=hadoc] ~ ~-53 ~ particle minecraft:balloon_gas_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=5] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=5] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=1650..2900}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=1.75] instant_damage 1 0

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2200}] ~ ~ ~ kill @e[tag=hadoc]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2199}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §6「定速貫通弾・改」"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2200..2500}] ~ ~ ~ summon armor_stand ~ ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2200..2500}] ~ ~52 ~ tag @e[c=1,type=armor_stand,tag=!hadoc] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2200..2500}] ~ ~52 ~ execute @e[c=1,tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1 facing @r
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2200..2500}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2200..2500}] ~ ~ ~ execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^1.5

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2499}] ~ ~ ~ kill @e[tag=hadoc]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §6「ホーミング4way貫通弾」"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~ ~ summon armor_stand ~ ~50 ~-4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~ ~ summon armor_stand ~ ~50 ~4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~ ~ summon armor_stand ~-4 ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~ ~ summon armor_stand ~4 ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~50 ~ tag @e[c=4,type=armor_stand,tag=!hadoc] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~50 ~ execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^0.2 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900,bosstime2=0}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^0.8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900}] ~ ~ ~ execute @e[tag=hadoc] ~ ~ ~ scoreboard players add @s bosstime2 1
#execute @e[type=!player,tag=bosscreeper,scores={bosstime=2500..2900}] ~ ~ ~execute @e[tag=hadoc,scores={bosstime2=180..}] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=2900..3050}] ~ ~ ~ kill @e[tag=hadoc]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §c「流星群」"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3000}] ~ ~ ~ playsound random.levelup @a[r=50]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~8 ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~-8 ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~ ~-4 ~8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~ ~-4 ~-8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~18 ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~-18 ~-4 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~ ~-4 ~18
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ summon armor_stand ~ ~-4 ~-18
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~~ tag @e[c=8,type=armor_stand,tag=!bce,tag=!bce2,tag=!bce3] add rsh
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3060}] ~ ~ ~ scoreboard players add @e[tag=rsh] bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ effect @s invisibility 100000 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1}] ~ ~ ~ spreadplayers ~ ~ 0 40 @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1}] ~ ~ ~ tp @s ~ ~7 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050}] ~ ~ ~ playsound random.orb @a[r=50]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ tp @s ^ ^ ^0.27 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600,en0=0}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=5] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=5] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=1.75] instant_damage 1 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ particle minecraft:knockback_roar_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ tp @s ~ ~-1000000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3050..3600}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §c「流星群I類・ランダムショット」"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600}] ~ ~ ~ playsound random.levelup @a[r=50]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ scoreboard players operation @s bosstime2 = @s bosstime
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ scoreboard players operation @s bosstime2 %= s20 s20

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~ ~ summon armor_stand ~ ~500 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~500 ~ tag @e[c=1,type=armor_stand,tag=!bce,tag=!bce2,tag=!bce3] add rsh
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~ ~ scoreboard players add @e[tag=rsh] bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ effect @s invisibility 100000 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1}] ~ ~ ~ spreadplayers ~ ~ 0 40 @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1}] ~ ~ ~ tp @s ~ ~7 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,bosstime2=0..5}] ~ ~ ~ playsound random.orb @a[r=50]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200] ~ ~ ~ effect @a[r=50] speed 1 5

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ tp @s ^ ^ ^0.27 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200,en0=0}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=5] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=5] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=1.75] instant_damage 1 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ particle minecraft:knockback_roar_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ tp @s ~ ~-1000000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ playsound item.shield.block @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=3600..3605}] ~ ~ ~ execute @e[r=15,tag=!bosscreeper] ~ ~ ~ playsound random.anvil_land @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4200}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ kill @s

#execute @e[type=!player,tag=bosscreeper,scores={bosstime=4400}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §4攻撃力超強化！！！！！！"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §e「流星群II類・旋風」"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450}] ~ ~ ~ playsound random.levelup @a[r=50]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ scoreboard players operation @s bosstime2 = @s bosstime
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ scoreboard players operation @s bosstime2 %= s20 s20

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ summon armor_stand ~ ~500 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~500 ~ effect @e[c=1,type=armor_stand,r=10] invisibility 100000 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~500 ~ tag @e[c=1,type=armor_stand,tag=!bosscreeper,tag=!bce,tag=!bce2,tag=!bce3,tag=!rsh] add rsh
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ scoreboard players add @e[tag=rsh] bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ effect @s invisibility 100000 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ effect @s fire_resistance 100000 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1}] ~ ~ ~ spreadplayers ~ ~ 0 7 @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1}] ~ ~ ~ scoreboard players random @s bosstime2 1 9
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=1}] ~ ~ ~ tp @s ~ ~-1 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=2}] ~ ~ ~ tp @s ~ ~0 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=3}] ~ ~ ~ tp @s ~ ~1 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=4}] ~ ~ ~ tp @s ~ ~2 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=5}] ~ ~ ~ tp @s ~ ~3 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ tp @e[tag=rsh,scores={bosstime=1,bosstime2=6}] ~1.2 ~0.2 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=7}] ~ ~ ~ tp @s ~20 ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=8}] ~ ~ ~ tp @s ~ ~2 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1,bosstime2=9}] ~ ~ ~ tp @s ~ ~1 ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ scoreboard players add @e[type=arrow,r=30] bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[type=arrow,r=30,scores={bosstime=1..}] ~ ~ ~ tp @s ^ ^ ^0.4 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[type=arrow,r=30,scores={bosstime=1}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §a「弓矢効力低下」"}]}

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,bosstime2=0..5}] ~ ~ ~ playsound random.orb @a[r=50]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ tp @s ~ ~ ~ facing @e[tag=bosscreeper,c=1]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ tp @s ~ ~ ~ ~90 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ tp @s ^ ^ ^0.27 ~ 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ tp @s ^ ^ ^0.66 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550,en0=0}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=1..}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ effect @a[r=50] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ effect @a[r=50] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ effect @a[r=1.75] instant_damage 1 3
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ particle minecraft:knockback_roar_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ tp @s ~ ~-1000000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=100..}] ~ ~ ~ particle minecraft:knockback_roar_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=100..}] ~ ~ ~ tp @s ~ ~-1000000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh,scores={bosstime=100..}] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ playsound item.shield.block @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=4450..4455}] ~ ~ ~ execute @e[r=15,tag=!bosscreeper] ~ ~ ~ playsound random.anvil_land @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6550}] ~ ~ ~ execute @e[tag=rsh] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~ ~ summon armor_stand ~ ~50 ~-4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~ ~ summon armor_stand ~ ~50 ~4
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~ ~ summon armor_stand ~-4 ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~ ~ summon armor_stand ~4 ~50 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~50 ~ tag @e[c=4,type=armor_stand,tag=!hadoc] add hadoc
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~50 ~ execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^0.2 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,bosstime2=0}] ~ ~ ~ execute @a[r=30] ~ ~ ~ playsound random.orb @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ tp @s ^ ^ ^0.8
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~ execute @e[tag=hadoc] ~ ~ ~ scoreboard players add @s bosstime2 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ effect @s invisibility 1 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~execute @e[tag=hadoc] ~ ~ ~ scoreboard players add @s bosstime2 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~execute @e[tag=hadoc,scores={bosstime2=140..}] ~ ~ ~ kill @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,en0=0}] ~ ~ ~execute @e[tag=hadoc] ~ ~-53 ~ particle minecraft:balloon_gas_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000,en0=2}] ~ ~ ~execute @e[tag=hadoc] ~ ~-53 ~ particle minecraft:balloon_gas_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=5] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=5] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000..6000}] ~ ~ ~ execute @e[tag=hadoc] ~ ~-54 ~ effect @a[r=1.75] instant_damage 1 0

execute @e[type=!player,tag=bosscreeper,scores={bosstime=6600}] ~ ~ ~ kill @e[tag=hadoc]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=6600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> zzz・・・zzzzz・・・"}]}
#execute @e[type=!player,tag=bosscreeper,scores={bosstime=4950}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §5ホーミング4way追加！"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §b「流星群III類・旋風II」"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=5000}] ~ ~ ~ playsound random.levelup @a[r=50]

#execute @e[type=!player,tag=bosscreeper,scores={bosstime=5950}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> 最終攻撃"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§d<enemy> §9「流星群IV類・ホーミング改旋風」"}]}
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000}] ~ ~ ~ playsound random.levelup @a[r=50]
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~~ ~ ~ effect @a[r=50] speed 1 5

execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ summon armor_stand ~ ~500 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~500 ~ tag @e[c=1,type=armor_stand,tag=!bce,tag=!bce2,tag=!bce3] add rsh2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ scoreboard players add @e[tag=rsh2] bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1..}] ~ ~ ~ effect @s invisibility 100000 1 true
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1}] ~ ~ ~ effect @s instant_damage 1 3
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1}] ~ ~ ~ effect @s instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1}] ~ ~ ~ spreadplayers ~ ~ 30 45 @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1}] ~ ~ ~ tp @s ~ ~8 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,bosstime2=0..5}] ~ ~ ~ playsound random.orb @a[r=50]

execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1..}] ~ ~ ~ tp @s ^ ^ ^0.32 facing @p
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,en0=0}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1..}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600,en0=2}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=1..}] ~ ~ ~ particle minecraft:balloon_gas_particle ~ ~ ~

execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ effect @a[r=5] instant_damage 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ effect @a[r=5] resistance 0
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ effect @a[r=1.75] resistance 1 2
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ effect @a[r=1.75] instant_damage 1 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh2] ~ ~ ~ particle minecraft:knockback_roar_particle ~ ~ ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh2] ~ ~ ~ tp @s ~ ~-1000000 ~
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ execute @e[c=1,tag=rsh2] ~ ~ ~ kill @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ scoreboard players add @s bosstime 1
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2,scores={bosstime=200..}] ~ ~ ~ kill @s

execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ execute @a[r=1.75] ~ ~ ~ playsound item.shield.block @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6000..6005}] ~ ~ ~ execute @e[r=15,tag=!bosscreeper] ~ ~ ~ playsound random.anvil_land @s
execute @e[type=!player,tag=bosscreeper,scores={bosstime=6600}] ~ ~ ~ execute @e[tag=rsh2] ~ ~ ~ kill @s


execute @e[type=!player,tag=bosscreeper,scores={bosstime=6800..}] ~ ~ ~ scoreboard players set @s bosstime 450

#execute @e[type=!player,tag=bosscreeper,scores={bosstime=30}] ~ ~ ~ scoreboard players set @s bosstime 4349
#execute @e[type=!player,tag=bosscreeper,scores={bosstime=6555..}] ~ ~ ~ scoreboard players set @s bosstime 4349

#summon zombie ~ ~1 ~
#replaceitem entity @e[c=1,type=zombie] slot.armor.head 0 skull 1 4
#tag @e[c=1] add bosscreeper

#tag @e[tag=bosscreeper] add asis
#execute @e[type=!player,tag=asis,scores={bosstime=5}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> ボスの攻略方法を...アシストする。ボスは中央に浮いているクリーパー頭だからそれを狙え。HPは600,エンダードラゴンは450なのでそれよりも高い。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=2}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> ボスは行動パターンが決まっているのでアシストのように立ち回れば大丈夫だ。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=30}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> ひっそり入っている釣り竿は降ると金りんごを消費して即時回復できる最重要アイテムだ。絶対に取り損ねるな"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=50}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> この結界はボスの真下3×3の範囲に入ると反撃してくる。超速超攻撃力なので近接攻撃自体を避けたほうがいいかもしれない。慣れてきたらチャレンジしてみよう。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=70}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> ボスの半径20ブロック以上外側の弓矢は弾道阻害されて弾道維持できないので、攻撃するか回避するかを決めたほうがよさそうだ"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=300}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> この攻撃は一定の距離を保つと完全に攻撃を回避できるのでギリギリ回避できるところから弓で狙撃するのがよいだろう"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=700}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> クリーパーが大量に召喚されるが、十秒で消えるのでそれまで全力で逃げるか水に入れば爆撃を食らうことを回避できる。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=900}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 初見殺しトラップだ。ボスの周りに出ている白い球の円の§c内側§7に入ることで攻撃を回避することができる。早めに入らないと盲目になって回避が困難になるぞ。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=1200}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 空へ浮き上がらせてアマスタに近づくと連続ダメージが入るので、それを避けるかボスから離れて浮き上がらせてくる範囲外に出ることで回避する。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=1651}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 定速貫通弾はプレイヤーを直接狙ってくるから球が来たら一定方向にボスの周りをまわるように歩いていれば回避できる。この後来る大量の定速貫通弾も同じようにして避けられる。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=2500}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> さてここが問題で、ホーミングは最寄りプレイヤーに四つの定速貫通弾を発射し、二秒後に再度それがプレイヤーの方向へ移動する。ボスに背を向けて右へ回避すると左から球が進んでいくのが見える。二秒後の次の効果音でその通り過ぎた球がこっちに向かってくるのでその間に左によける。これを繰り返す。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=3000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> これは後々来る流星群の光弾を八個召喚する。威力はハート二個から四個分。一回当たると弾ける。これは全力で走ればぎりぎり逃げ切れるが、ここはあえてダメージを覚悟してボスを攻撃したほうがいいかもしれない"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=3600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> こっからいよいよラストスパートに入ってくる。攻撃を控えて回避に専念すべき。この攻撃はさっきのような光弾を上空に毎秒五個召喚する。これが三十秒続くので合計１５０個の光弾が放たれる。全力でボスにはなれるように逃げることで回避できる。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=4450}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 旋風は最高級の必殺技で回転している光弾は威力ハート九個という異常火力を持っているのでとにかく焦らず周りで待機するのが重要だ。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=5000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 旋風によって近距離でホーミングを回避できないのでひたすら外へ走る。}]}
#execute @e[type=!player,tag=asis,scores={bosstime=6000}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 最終攻撃が発動。大量の光弾を召喚してくるので全力でボスから離れるように走るしかない。"}]}
#execute @e[type=!player,tag=asis,scores={bosstime=6600}] ~ ~ ~ tellraw @a {"rawtext":[{"text":"§7<Nekoyama 030330> 一通りの攻撃は終わったが終了から二秒後再度最初から攻撃が始まるので避けつつ攻撃を仕掛けることでダメージを突く席させて撃破できる。"}]}
