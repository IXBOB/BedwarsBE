scoreboard players add @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=..321}] emerald_count_1 80
scoreboard players add @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_2=..321}] emerald_count_2 80
execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=80..,spawned_emer_1=..2}] ~~~ execute @e[type=bedwars:emerald_point_revolve,tag=emerald_point_1] ~~~ function ore_spawner/spawn_dropped_emerald/main
execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=80..,spawned_emer_1=..2}] ~~~ scoreboard players add @s spawned_emer_1 1
execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_2=80..,spawned_emer_2=..2}] ~~~ execute @e[type=bedwars:emerald_point_revolve,tag=emerald_point_2] ~~~ function ore_spawner/spawn_dropped_emerald/main
execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_2=80..,spawned_emer_2=..2}] ~~~ scoreboard players add @s spawned_emer_2 1
execute @a[tag=on_emerald_block] ~~~ function ore_get/emerald/assign
scoreboard players set @s[scores={绿宝石等级=1}] 绿宝石time 40
scoreboard players set @s[scores={绿宝石等级=2}] 绿宝石time 30
scoreboard players set @s[scores={绿宝石等级=3}] 绿宝石time 20