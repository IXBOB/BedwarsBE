#游戏未开始传送游戏区玩家到大厅
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=126,dy=40,dz=126] ~~~ effect @s clear
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=126,dy=40,dz=126] ~~~ xp -99999L @s
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=126,dy=40,dz=126] ~~~ tp @s -200 200 -200
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=127,dy=40,dz=127] ~~~ clear @s
#游戏未开始时删除僵尸猪人
execute @e[type=armor_stand,scores={gameSTART=0},name=main] ~~~ execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#gamestart=0,复制告示牌游戏未开始
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ clone 293 4 296 293 4 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ setblock -200 201 -205 air