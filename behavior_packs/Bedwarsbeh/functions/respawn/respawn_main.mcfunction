#重生时间 -1
scoreboard players add @e[type=player,scores={respawning=1,"重生时间"=0..}] "重生时间" -1
#tellraw获得无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..0,"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§lBED WARS >> §b§lYou gained 3 seconds of invincibility" } ] }
#重生TP红
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..0,"分队"=1}] ~~~ tp @s 0 186 53 facing 0 182 0
#重生TP蓝
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..0,"分队"=2}] ~~~ tp @s 0 186 -53 facing 0 182 0
#重生时间title
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={respawning=1}] ~~~ title @s times 0 40 10
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=80,respawning=1}] ~~~ title @s title §cYOU DIED
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=80,respawning=1}] ~~~ title @s subtitle §erespawn in §c4 §eseconds
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=60,respawning=1}] ~~~ title @s title §cYOU DIED
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=60,respawning=1}] ~~~ title @s subtitle §erespawn in §c3 §eseconds
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=40,respawning=1}] ~~~ title @s title §cYOU DIED
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=40,respawning=1}] ~~~ title @s subtitle §erespawn in §c2 §eseconds
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=20,respawning=1}] ~~~ title @s title §cYOU DIED
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=20,respawning=1}] ~~~ title @s subtitle §erespawn in §c1 §esecond
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=0,respawning=1}] ~~~ title @s title §aRESPAWNED

#重生时删除in_void_kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=1..2,respawning=1}] ~~~ tag @s remove in_void_kill
#设置游戏模式生存
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..0,"分队"=1..2,respawning=1}] ~~~ gamemode survival
#设置无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..0,"分队"=1..2,respawning=1}] ~~~ scoreboard players set @s "无敌时间" 60
#游戏结束传送复活中红队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=1}] ~~~ tp @s 0 186 53 facing 0 182 0
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=1}] ~~~ scoreboard players set @s "重生时间" -1
#游戏结束传送复活中蓝队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=2}] ~~~ tp @s 0 186 -53 facing 0 182 0
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=2}] ~~~ scoreboard players set @s "重生时间" -1
#游戏结束传送的其他杂项设置在gameSTART2_functions

#设置respawning 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..0,"分队"=1..2,respawning=1}] ~~~ scoreboard players set @s respawning 0
#重置复活时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..0,"分队"=1..2,respawning=0}] ~~~ scoreboard players set @s "重生时间" 100
#超时传送回大厅
tag @a[scores={"重生时间"=..-100}] add respawn_error
scoreboard players set @a[tag=respawn_error] "重生时间" 100
tp @a[tag=respawn_error] -200 200 -200
tellraw @a[tag=respawn_error] { "rawtext" : [ { "text" : "§f§lBED WARS >> §cYou have been teleported to the lobby." } ] }
tag @a remove respawn_error