tag @s add get_iron_green
execute @e[type=armor_stand,name=spawn.green_iron,scores={R_iron_count=1..}] ~~~ function utils/gameway_2_green_iron_point_give_iron
tag @s remove get_iron_green
tag @s add get_gold_green
execute @e[type=armor_stand,name=spawn.green_gold,scores={R_gold_count=7..}] ~~~ function utils/gameway_2_green_gold_point_give_gold
tag @s remove get_gold_green
tag @s add cache
execute @e[type=armor_stand,name=spawn.green_iron,scores={R_iron_count=1..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache