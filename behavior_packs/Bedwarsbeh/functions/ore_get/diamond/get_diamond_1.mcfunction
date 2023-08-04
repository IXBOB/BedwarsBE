scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=30..}] diamond_count_1
execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_1] ~~~ kill @e[type=item,name=Diamond,r=1.8]
scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] diamond_count_1 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] spawned_diam_1 0