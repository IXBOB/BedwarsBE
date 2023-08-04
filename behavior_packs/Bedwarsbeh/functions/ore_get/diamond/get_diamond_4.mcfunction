scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..}] diamond_count_4
execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_4] ~~~ kill @e[type=item,name=Diamond,r=1.8]
scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] diamond_count_4 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] spawned_diam_4 0