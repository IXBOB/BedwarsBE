scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=1..}] B_iron_count
scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=7..}] B_gold_count
execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ kill @e[type=item,name=Iron,r=2]
execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ kill @e[type=item,name=Gold,r=2]
scoreboard players set @e[type=armor_stand,name=spawn.blue_iron] B_iron_count 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_iron] B_spawned_iron 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_gold_count 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_spawned_gold 0