execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"红床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=1,joined=0}] respawning 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"红床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=1,joined=0}] "出局观战" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"红床存活"=0}] ~~~ tp @a[scores={"分队"=1,joined=0}] 0 210 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"红床存活"=0}] ~~~ gamemode spectator @a[scores={"分队"=1,joined=0}]
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"蓝床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=2,joined=0}] respawning 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"蓝床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=2,joined=0}] "出局观战" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"蓝床存活"=0}] ~~~ tp @a[scores={"分队"=2,joined=0}] 0 210 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"蓝床存活"=0}] ~~~ gamemode spectator @a[scores={"分队"=2,joined=0}]
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"黄床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=3,joined=0}] respawning 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"黄床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=3,joined=0}] "出局观战" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"黄床存活"=0}] ~~~ tp @a[scores={"分队"=3,joined=0}] 0 210 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"黄床存活"=0}] ~~~ gamemode spectator @a[scores={"分队"=3,joined=0}]
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"绿床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=4,joined=0}] respawning 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"绿床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=4,joined=0}] "出局观战" 1
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"绿床存活"=0}] ~~~ tp @a[scores={"分队"=4,joined=0}] 0 210 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"绿床存活"=0}] ~~~ gamemode spectator @a[scores={"分队"=4,joined=0}]
#初始化新玩家
execute @s[tag=!registered] ~~~ function player_register
