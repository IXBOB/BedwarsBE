scoreboard players add @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=..99}] Y_gold_count 8
execute @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=8..,Y_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ function ore_spawner/spawn_dropped_gold/main
execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ execute @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=8..,Y_spawned_gold=..2}] ~~~ scoreboard players add @s Y_spawned_gold 1
scoreboard players set @s[scores={黄锻炉等级=0}] yellow_gold_time 6
scoreboard players set @s[scores={黄锻炉等级=1}] yellow_gold_time 5
scoreboard players set @s[scores={黄锻炉等级=2}] yellow_gold_time 4
scoreboard players set @s[scores={黄锻炉等级=3}] yellow_gold_time 3
scoreboard players set @s[scores={黄锻炉等级=4}] yellow_gold_time 2