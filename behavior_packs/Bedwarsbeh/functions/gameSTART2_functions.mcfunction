#游戏结算时传送屏障上红队至基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[x=-63,y=171,z=-63,dx=127,dy=5,dz=127,scores={"分队"=1}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 53 facing 0 182 0
#游戏结算时传送屏障上蓝队至基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[x=-63,y=171,z=-63,dx=127,dy=5,dz=127,scores={"分队"=2}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 -53 facing 0 182 0
#gamestart=2,复制告示牌游戏未开始
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ clone 293 4 296 293 4 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ setblock -200 201 -205 air