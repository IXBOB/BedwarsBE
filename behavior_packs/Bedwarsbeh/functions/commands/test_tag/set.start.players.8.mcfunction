tag @s remove set.start.players.2
tag @s remove set.start.players.3
tag @s remove set.start.players.4
tag @s remove set.start.players.5
tag @s remove set.start.players.6
tag @s remove set.start.players.7
tag @s remove have.set.start.players.2
tag @s remove have.set.start.players.3
tag @s remove have.set.start.players.4
tag @s remove have.set.start.players.5
tag @s remove have.set.start.players.6
tag @s remove have.set.start.players.7
tag @s add have.set.start.players.8
execute @e[type=player,scores={出局观战=0,in_lobby=1..2}] ~~~ function inventory_menu/refresh_menu/refresh_menu3