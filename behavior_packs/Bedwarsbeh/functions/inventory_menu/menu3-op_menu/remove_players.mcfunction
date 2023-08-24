tag @s add remove_players
execute @e[type=armor_stand,name=main,tag=set.start.players.3] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=remove_players] ~~~ tag @s add set.start.players.2
execute @e[type=armor_stand,name=main,tag=set.start.players.4] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=remove_players] ~~~ tag @s add set.start.players.3
execute @e[type=armor_stand,name=main,tag=set.start.players.5] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=remove_players] ~~~ tag @s add set.start.players.4
execute @e[type=armor_stand,name=main,tag=set.start.players.6] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=remove_players] ~~~ tag @s add set.start.players.5
execute @e[type=armor_stand,name=main,tag=set.start.players.7] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=remove_players] ~~~ tag @s add set.start.players.6
execute @e[type=armor_stand,name=main,tag=set.start.players.8] ~~~ execute @e[type=player,scores={出局观战=0,in_lobby=1},tag=remove_players] ~~~ tag @s add set.start.players.7
function change_start_player_count
tag @s remove remove_players
##refresh command in commands/test_tag/set.start.players.#.mcfunction