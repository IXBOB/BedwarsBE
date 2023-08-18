scoreboard players add @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=..239}] diamond_count_1 30
scoreboard players add @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=..239}] diamond_count_2 30
scoreboard players add @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=..239}] diamond_count_3 30
scoreboard players add @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=..239}] diamond_count_4 30
execute @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=30..,spawned_diam_1=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_1] ~~~ function ore_spawner/spawn_dropped_diamond/main
execute @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=30..,spawned_diam_1=..7}] ~~~ scoreboard players add @s spawned_diam_1 1
execute @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=30..,spawned_diam_2=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_2] ~~~ function ore_spawner/spawn_dropped_diamond/main
execute @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=30..,spawned_diam_2=..7}] ~~~ scoreboard players add @s spawned_diam_2 1
execute @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=30..,spawned_diam_3=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_3] ~~~ function ore_spawner/spawn_dropped_diamond/main
execute @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=30..,spawned_diam_3=..7}] ~~~ scoreboard players add @s spawned_diam_3 1
execute @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..,spawned_diam_4=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_4] ~~~ function ore_spawner/spawn_dropped_diamond/main
execute @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..,spawned_diam_4=..7}] ~~~ scoreboard players add @s spawned_diam_4 1
execute @a[tag=on_diamond_block] ~~~ function ore_get/diamond/assign
scoreboard players set @s[scores={钻石等级=1}] 钻石time 35
scoreboard players set @s[scores={钻石等级=2}] 钻石time 20
scoreboard players set @s[scores={钻石等级=3}] 钻石time 15