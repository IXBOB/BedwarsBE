scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..}] R_iron_count
scoreboard players operation @s own_xp += @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=7..}] R_gold_count
tag @s add cache
execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache