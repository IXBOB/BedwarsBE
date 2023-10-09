tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.take_away_op"} ] }
execute @s[scores={出局观战=0,in_lobby=1..2,menu_page=1}] ~~~ function inventory_menu/refresh_menu/refresh_menu1
tag @s remove get.op.tellrawed