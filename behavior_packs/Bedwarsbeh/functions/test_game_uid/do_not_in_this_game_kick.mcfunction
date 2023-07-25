function unexpectedly_in_this_game_kick
tellraw @s[tag=do_not_in_this_game] { "rawtext" : [ {"translate":"text.tellraw.others.last_game_ended"} ] }
tag @s remove do_not_in_this_game