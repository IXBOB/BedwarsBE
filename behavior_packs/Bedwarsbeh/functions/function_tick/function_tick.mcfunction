scoreboard players add @e[type=armor_stand,name=main] function_tick 1
execute @e[type=armor_stand,name=main,scores={function_tick=21..}] ~~~ scoreboard players add @s fc_tick_cycle 1
execute @e[type=armor_stand,name=main,scores={function_tick=21..,fc_tick_cycle=81..}] ~~~ scoreboard players set @s fc_tick_cycle 0
execute @e[type=armor_stand,name=main,scores={function_tick=21..}] ~~~ scoreboard players set @s function_tick 1