scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..}] R_iron_count
scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=7..}] R_gold_count
execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ kill @e[type=item,name=Iron,r=2]
execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ kill @e[type=item,name=Gold,r=2]
scoreboard players set @e[type=armor_stand,name=spawn.red_iron] R_iron_count 0
scoreboard players set @e[type=armor_stand,name=spawn.red_iron] R_spawned_iron 0
scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_gold_count 0
scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_spawned_gold 0