scoreboard players add @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=..99}] R_iron_count 3
execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..,R_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ function ore_spawner/spawn_dropped_iron/x3
execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..,R_spawned_iron=..5}] ~~~ scoreboard players add @s R_spawned_iron 3
execute @a[tag=on_iron_block_red] ~~~ function ore_get/iron_and_gold/red
execute @a[tag=on_iron_block_red,c=1] ~~~ function ore_get/iron_and_gold/reset_red
scoreboard players set @s[scores={游戏模式=1}] 红铁time 2
scoreboard players set @s[scores={游戏模式=2}] 红铁time 1