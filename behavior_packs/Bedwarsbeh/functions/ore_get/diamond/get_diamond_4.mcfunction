scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..}] diamond_count_4
tag @s add cache
execute @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache
execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_4] ~~~ event entity @e[type=bedwars:dropped_diamond,r=3] bedwars:remove_self
scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] diamond_count_4 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] spawned_diam_4 0