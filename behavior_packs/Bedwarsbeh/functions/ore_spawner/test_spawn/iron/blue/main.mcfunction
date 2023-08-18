scoreboard players add @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=..99}] B_iron_count 3
execute @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=1..,B_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ function ore_spawner/spawn_dropped_iron/x3
execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=1..,B_spawned_iron=..5}] ~~~ scoreboard players add @s B_spawned_iron 3
execute @a[tag=on_iron_block_blue] ~~~ function ore_get/iron_and_gold/blue
scoreboard players set @s[scores={游戏模式=1}] 蓝铁time 2
scoreboard players set @s[scores={游戏模式=2}] 蓝铁time 1