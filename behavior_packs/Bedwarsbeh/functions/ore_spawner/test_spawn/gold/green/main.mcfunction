scoreboard players add @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=..99}] G_gold_count 8
execute @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=8..,G_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_green_invisible,tag=iron_point_green] ~~~ function ore_spawner/spawn_dropped_gold/main
execute @e[type=bedwars:iron_point_green_invisible,tag=iron_point_green] ~~~ execute @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=8..,G_spawned_gold=..2}] ~~~ scoreboard players add @s G_spawned_gold 1
scoreboard players set @s[scores={绿锻炉等级=0}] green_gold_time 6
scoreboard players set @s[scores={绿锻炉等级=1}] green_gold_time 5
scoreboard players set @s[scores={绿锻炉等级=2}] green_gold_time 4
scoreboard players set @s[scores={绿锻炉等级=3}] green_gold_time 3
scoreboard players set @s[scores={绿锻炉等级=4}] green_gold_time 2