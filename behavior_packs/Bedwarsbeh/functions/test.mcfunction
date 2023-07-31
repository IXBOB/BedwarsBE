scoreboard objectives add 红锻炉等级 dummy
scoreboard objectives add 蓝锻炉等级 dummy
scoreboard objectives add 黄锻炉等级 dummy
scoreboard objectives add 绿锻炉等级 dummy
scoreboard objectives remove 红床有敌
scoreboard objectives remove 蓝床有敌
scoreboard objectives remove 黄床有敌
scoreboard objectives remove 绿床有敌
scoreboard objectives add function_tick_40 dummy
scoreboard objectives add lobby_text_num dummy
scoreboard players set @e[type=armor_stand,name=main] lobby_text_num 1
scoreboard objectives remove function_tick
scoreboard objectives add function_tick_20 dummy
scoreboard objectives remove lobby_text_time