scoreboard players add @s function_tick_20 1
execute @s[scores={function_tick_20=21..}] ~~~ scoreboard players add @s fc_tick_cycle 1
execute @s[scores={function_tick_20=21..,fc_tick_cycle=81..}] ~~~ scoreboard players set @s fc_tick_cycle 0
execute @s[scores={function_tick_20=21..}] ~~~ scoreboard players set @s function_tick_20 1