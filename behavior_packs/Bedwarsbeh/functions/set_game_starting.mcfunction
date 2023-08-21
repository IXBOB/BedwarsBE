#人数满足starting -> 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=2..},tag=reset_OK,tag=set.start.players.2] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=3..},tag=reset_OK,tag=set.start.players.3] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=4..},tag=reset_OK,tag=set.start.players.4] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=5..},tag=reset_OK,tag=set.start.players.5] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=6..},tag=reset_OK,tag=set.start.players.6] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=7..},tag=reset_OK,tag=set.start.players.7] ~~~ scoreboard players set @s starting 1
execute @e[type=armor_stand,scores={gameSTART=0,"大厅人数"=8..},tag=reset_OK,tag=set.start.players.8] ~~~ scoreboard players set @s starting 1
#检测人数足够后又不够
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.not_enough_players"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.cancel_countdown"} ] }
#人数不满足清空经验条倒计时
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ xp -99999l @a
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ xp -99999l @a
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ xp -99999l @a
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ xp -99999l @a
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ xp -99999l @a
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ xp -99999l @a
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ xp -99999l @a
#人数不满足starting -> 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..1},tag=set.start.players.2] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..2},tag=set.start.players.3] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..3},tag=set.start.players.4] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..4},tag=set.start.players.5] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..5},tag=set.start.players.6] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..6},tag=set.start.players.7] ~~~ scoreboard players set @s starting 0
execute @e[type=armor_stand,scores={gameSTART=0,starting=1,"大厅人数"=..7},tag=set.start.players.8] ~~~ scoreboard players set @s starting 0