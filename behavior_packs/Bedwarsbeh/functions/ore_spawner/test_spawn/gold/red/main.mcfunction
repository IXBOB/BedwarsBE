scoreboard players add @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=..99}] R_gold_count 8
execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=8..,R_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ function ore_spawner/spawn_dropped_gold/main
execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=8..,R_spawned_gold=..2}] ~~~ scoreboard players add @s R_spawned_gold 1
scoreboard players set @s[scores={红锻炉等级=0}] red_gold_time 6
scoreboard players set @s[scores={红锻炉等级=1}] red_gold_time 5
scoreboard players set @s[scores={红锻炉等级=2}] red_gold_time 4
scoreboard players set @s[scores={红锻炉等级=3}] red_gold_time 3
scoreboard players set @s[scores={红锻炉等级=4}] red_gold_time 2