scoreboard players add @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=..99}] G_iron_count 3
execute @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=1..,G_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_green_invisible,tag=iron_point_green] ~~~ function ore_spawner/spawn_dropped_iron/z3
execute @e[type=bedwars:iron_point_green_invisible,tag=iron_point_green] ~~~ execute @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=1..,G_spawned_iron=..5}] ~~~ scoreboard players add @s G_spawned_iron 3
execute @a[tag=on_iron_block_green] ~~~ function ore_get/iron_and_gold/green
execute @a[tag=on_iron_block_green,c=1] ~~~ function ore_get/iron_and_gold/reset_green
scoreboard players set @s[scores={游戏模式=1}] 绿铁time 2
scoreboard players set @s[scores={游戏模式=2}] 绿铁time 1