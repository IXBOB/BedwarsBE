scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=30..}] diamond_count_3
tag @s add cache
execute @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=30..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache
execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_3] ~~~ event entity @e[type=bedwars:dropped_diamond,r=3] bedwars:remove_self
scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] diamond_count_3 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] spawned_diam_3 0