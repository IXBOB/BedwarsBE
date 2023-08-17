scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=80..}] emerald_count_1
execute @e[type=bedwars:emerald_point_revolve,tag=emerald_point_1] ~~~ event entity @e[type=bedwars:dropped_emerald,r=3] bedwars:remove_self
scoreboard players set @e[type=armor_stand,name=spawn.emerald] emerald_count_1 0
scoreboard players set @e[type=armor_stand,name=spawn.emerald] spawned_emer_1 0