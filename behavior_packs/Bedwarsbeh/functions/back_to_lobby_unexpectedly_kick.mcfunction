execute @s[tag=unexpected_return_to_lobby] ~~~ function unexpectedly_in_this_game_kick
tellraw @s[tag=unexpected_return_to_lobby] { "rawtext" : [ {"translate":"text.tellraw.others.unexpected_return_to_lobby"} ] }
tag @s remove unexpected_return_to_lobby