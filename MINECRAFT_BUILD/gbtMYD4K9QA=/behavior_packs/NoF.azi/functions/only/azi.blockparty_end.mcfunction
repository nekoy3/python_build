#sys.rank�֐��ƘA��/�o���l���x����r_exp�ɉ��Z�����Z�b�g
execute @a[scores={nmf.xp_score=1..}] ~ ~ ~ scoreboard players operation @s r_exp += @s nmf.xp_score
xp -100000l @a
#�ړ�
tp @a[x=-30,y=4,z=-125,dx=50,dy=1000,dz=50] 0 7 0
#���Z�b�g
setblock -76 248 -120 redstone_block
setblock -59 248 -117 air
#�l�����m�o�O�Ώ�
scoreboard players add end score 1
#���낢��ȃX�R�A�̃��Z�b�g
setblock -58 248 -121 redstone_block
scoreboard objectives remove blockparty
