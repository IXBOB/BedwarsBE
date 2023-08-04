scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=30..}] diamond_count_2
execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_2] ~~~ kill @e[type=item,name=Diamond,r=1.8]
scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] diamond_count_2 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] spawned_diam_2 0