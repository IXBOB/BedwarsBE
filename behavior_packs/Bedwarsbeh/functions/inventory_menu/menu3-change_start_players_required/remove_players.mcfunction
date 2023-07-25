execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add refresh_menu3
execute @e[type=armor_stand,name=main,tag=set.start.players.3] ~~~ execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add set.start.players.2
execute @e[type=armor_stand,name=main,tag=set.start.players.4] ~~~ execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add set.start.players.3
execute @e[type=armor_stand,name=main,tag=set.start.players.5] ~~~ execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add set.start.players.4
execute @e[type=armor_stand,name=main,tag=set.start.players.6] ~~~ execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add set.start.players.5
execute @e[type=armor_stand,name=main,tag=set.start.players.7] ~~~ execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add set.start.players.6
execute @e[type=armor_stand,name=main,tag=set.start.players.8] ~~~ execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s add set.start.players.7
##refresh command in commands/test_tag/set.start.players.#.mcfunction
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ tag @s remove remove_start_players_required