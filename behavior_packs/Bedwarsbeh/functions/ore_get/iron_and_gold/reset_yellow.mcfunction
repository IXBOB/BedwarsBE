execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ event entity @e[type=bedwars:dropped_iron_ingot,r=3] bedwars:remove_self
execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ event entity @e[type=bedwars:dropped_gold_ingot,r=3] bedwars:remove_self
scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron] Y_iron_count 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron] Y_spawned_iron 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_gold_count 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_spawned_gold 0