scoreboard players add @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=..99}] B_gold_count 8
execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=8..,B_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ function ore_spawner/spawn_dropped_gold/main
execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=8..,B_spawned_gold=..2}] ~~~ scoreboard players add @s B_spawned_gold 1
scoreboard players set @s[scores={蓝锻炉等级=0}] blue_gold_time 6
scoreboard players set @s[scores={蓝锻炉等级=1}] blue_gold_time 5
scoreboard players set @s[scores={蓝锻炉等级=2}] blue_gold_time 4
scoreboard players set @s[scores={蓝锻炉等级=3}] blue_gold_time 3
scoreboard players set @s[scores={蓝锻炉等级=4}] blue_gold_time 2