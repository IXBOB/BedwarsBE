#游戏结算时传送屏障上红队至基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[x=-63,y=171,z=-63,dx=127,dy=5,dz=127,scores={"分队"=1}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 53 facing 0 182 0
#游戏结算时传送屏障上蓝队至基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[x=-63,y=171,z=-63,dx=127,dy=5,dz=127,scores={"分队"=2}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 -53 facing 0 182 0