#人数满足starting -> 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=2..},tag=reset_OK,tag=set.start.players.2] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=3..},tag=reset_OK,tag=set.start.players.3] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=4..},tag=reset_OK,tag=set.start.players.4] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=5..},tag=reset_OK,tag=set.start.players.5] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=6..},tag=reset_OK,tag=set.start.players.6] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=7..},tag=reset_OK,tag=set.start.players.7] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=8..},tag=reset_OK,tag=set.start.players.8] ~~~ scoreboard players set @s starting 1
#检测人数足够后又不够
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ title @a title §cNot enough players
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ title @a subtitle §cCountdown was cancelled
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ title @a subtitle §cCountdown was cancelled
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ title @a subtitle §cCountdown was cancelled
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ title @a subtitle §cCountdown was cancelled
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ title @a subtitle §cCountdown was cancelled
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ title @a subtitle §cCountdown was cancelled
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ title @a subtitle §cCountdown was cancelled
#人数不满足starting -> 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ scoreboard players set @s starting 0