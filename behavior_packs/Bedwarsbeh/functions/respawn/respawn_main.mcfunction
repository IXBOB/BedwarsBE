#重生时间 -1
scoreboard players add @e[type=player,scores={respawning=1,"重生时间"=0..}] "重生时间" -1
#tellraw获得无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..-1,"分队"=1..4}] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_invincibility"} ] }
#重生TP红
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..-1,"分队"=1}] ~~~ tp @s 0 186 53 facing 0 182 0
#重生TP蓝
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..-1,"分队"=2}] ~~~ tp @s 0 186 -53 facing 0 182 0
#重生TP黄
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..-1,"分队"=3}] ~~~ tp @s 53 186 0 facing 0 182 0
#重生TP绿
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..-1,"分队"=4}] ~~~ tp @s -53 186 0 facing 0 182 0
#重生时间title
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={respawning=1}] ~~~ title @s times 0 40 10
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={respawning=1,"重生时间"=0..}] ~~~ scoreboard players set @s "出局观战" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=80,respawning=1}] ~~~ titleraw @s title { "rawtext" : [{"translate":"text.title.ingameinfo.respawning"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=80,respawning=1}] ~~~ titleraw @s subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.respawning_4"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=60,respawning=1}] ~~~ titleraw @s title { "rawtext" : [{"translate":"text.title.ingameinfo.respawning"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=60,respawning=1}] ~~~ titleraw @s subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.respawning_3"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=40,respawning=1}] ~~~ titleraw @s title { "rawtext" : [{"translate":"text.title.ingameinfo.respawning"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=40,respawning=1}] ~~~ titleraw @s subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.respawning_2"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=20,respawning=1}] ~~~ titleraw @s title { "rawtext" : [{"translate":"text.title.ingameinfo.respawning"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=20,respawning=1}] ~~~ titleraw @s subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.respawning_1"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=0,respawning=1}] ~~~ titleraw @s title { "rawtext" : [{"translate":"text.title.ingameinfo.respawned"} ] }

#设置游戏模式生存
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..-1,"分队"=1..4,respawning=1}] ~~~ gamemode 0
#设置无敌时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..-1,"分队"=1..4,respawning=1}] ~~~ scoreboard players set @s "无敌时间" 60
#游戏结束传送复活中红队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=1}] ~~~ tp @s 0 186 53 facing 0 182 0
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=1}] ~~~ gamemode 0 @s
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=1}] ~~~ scoreboard players set @s "重生时间" -1
#游戏结束传送复活中蓝队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=2}] ~~~ tp @s 0 186 -53 facing 0 182 0
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=2}] ~~~ gamemode 0 @s
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=2}] ~~~ scoreboard players set @s "重生时间" -1
#游戏结束传送复活中黄队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=3}] ~~~ tp @s 53 186 0 facing 0 182 0
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=3}] ~~~ gamemode 0 @s
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=3}] ~~~ scoreboard players set @s "重生时间" -1
#游戏结束传送复活中黄队到基地
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=4}] ~~~ tp @s -53 186 0 facing 0 182 0
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=4}] ~~~ gamemode 0 @s
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ execute @e[type=player,scores={"重生时间"=0..,"分队"=4}] ~~~ scoreboard players set @s "重生时间" -1
#游戏结束传送的其他杂项设置在gameSTART2_functions

#设置出局观战 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={respawning=1,"重生时间"=..-1}] ~~~ scoreboard players set @s "出局观战" 0
#设置respawning 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..-1,"分队"=1..4,respawning=1}] ~~~ scoreboard players set @s respawning 0
#重置复活时间
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"重生时间"=..-1,"分队"=1..4,respawning=0}] ~~~ scoreboard players set @s "重生时间" 100
#超时传送回大厅
tag @a[scores={"重生时间"=..-100}] add respawn_error
scoreboard players set @a[tag=respawn_error] "重生时间" 100
scoreboard players set @a[tag=respawn_error] "出局观战" 0
tp @a[tag=respawn_error] -200 200 -200
tellraw @a[tag=respawn_error] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.respawn_error"} ] }
tag @a remove respawn_error