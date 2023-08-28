execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ event entity @e[type=bedwars:dropped_iron_ingot,r=3] bedwars:remove_self
execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ event entity @e[type=bedwars:dropped_gold_ingot,r=3] bedwars:remove_self
scoreboard players set @e[type=armor_stand,name=spawn.blue_iron] B_iron_count 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_iron] B_spawned_iron 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_gold_count 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_spawned_gold 0