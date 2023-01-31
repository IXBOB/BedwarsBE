#游戏结算时传送屏障上红队至基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[scores={"分队"=1,respawning=1}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 53 facing 0 182 0
#游戏结算时传送屏障上蓝队至基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[scores={"分队"=2,respawning=1}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 -53 facing 0 182 0
#重生中的玩家settings
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @a[scores={"分队"=2,respawning=1}] ~~~ scoreboard players set @s respawning 0
#gamestart=2,复制告示牌游戏未开始
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ clone 293 4 296 293 4 296 -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ setblock -200 201 -205 air