execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ event entity @e[type=bedwars:dropped_iron_ingot,r=3] bedwars:remove_self
execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ event entity @e[type=bedwars:dropped_gold_ingot,r=3] bedwars:remove_self
scoreboard players set @e[type=armor_stand,name=spawn.red_iron] R_iron_count 0
scoreboard players set @e[type=armor_stand,name=spawn.red_iron] R_spawned_iron 0
scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_gold_count 0
scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_spawned_gold 0