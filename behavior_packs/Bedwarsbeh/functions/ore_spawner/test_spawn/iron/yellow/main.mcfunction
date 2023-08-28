scoreboard players add @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=..99}] Y_iron_count 3
execute @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=1..,Y_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ function ore_spawner/spawn_dropped_iron/z3
execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ execute @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=1..,Y_spawned_iron=..5}] ~~~ scoreboard players add @s Y_spawned_iron 3
execute @a[tag=on_iron_block_yellow] ~~~ function ore_get/iron_and_gold/yellow
execute @a[tag=on_iron_block_yellow,c=1] ~~~ function ore_get/iron_and_gold/reset_yellow
scoreboard players set @s[scores={游戏模式=1}] 黄铁time 2
scoreboard players set @s[scores={游戏模式=2}] 黄铁time 1