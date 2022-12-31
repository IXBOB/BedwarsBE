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
#游戏重置前复制地图选择告示牌
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=0,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 4 294 293 4 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 5 294 293 5 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 6 294 293 6 294 -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=3,starting=0,reseting=0},tag=!reset_OK] ~~~ clone 293 7 294 293 7 294 -203 200 -197