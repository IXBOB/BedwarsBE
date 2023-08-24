tag @s add add_players
execute @e[type=armor_stand,name=main,tag=set.start.players.2] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=add_players] ~~~ tag @s add set.start.players.3
execute @e[type=armor_stand,name=main,tag=set.start.players.3] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=add_players] ~~~ tag @s add set.start.players.4
execute @e[type=armor_stand,name=main,tag=set.start.players.4] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=add_players] ~~~ tag @s add set.start.players.5
execute @e[type=armor_stand,name=main,tag=set.start.players.5] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=add_players] ~~~ tag @s add set.start.players.6
execute @e[type=armor_stand,name=main,tag=set.start.players.6] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=add_players] ~~~ tag @s add set.start.players.7
execute @e[type=armor_stand,name=main,tag=set.start.players.7] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=add_players] ~~~ tag @s add set.start.players.8
function change_start_player_count
tag @s remove add_players
##refresh command in commands/test_tag/set.start.players.#.mcfunction