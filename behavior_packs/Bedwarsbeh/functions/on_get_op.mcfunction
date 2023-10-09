tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.get_op"} ] }
execute @s[scores={出局观战=0,in_lobby=1..2,menu_page=1}] ~~~ function inventory_menu/refresh_menu/refresh_menu1
tag @s remove set.start.players.2
tag @s remove set.start.players.3
tag @s remove set.start.players.4
tag @s remove set.start.players.5
tag @s remove set.start.players.6
tag @s remove set.start.players.7
tag @s remove set.start.players.8
tag @s add get.op.tellrawed