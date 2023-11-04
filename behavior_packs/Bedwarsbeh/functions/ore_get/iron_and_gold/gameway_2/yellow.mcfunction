tag @s add get_iron_yellow
execute @e[type=armor_stand,name=spawn.yellow_iron,scores={R_iron_count=1..}] ~~~ function utils/gameway_2_yellow_iron_point_give_iron
tag @s remove get_iron_yellow
tag @s add get_gold_yellow
execute @e[type=armor_stand,name=spawn.yellow_gold,scores={R_gold_count=7..}] ~~~ function utils/gameway_2_yellow_gold_point_give_gold
tag @s remove get_gold_yellow
tag @s add cache
execute @e[type=armor_stand,name=spawn.yellow_iron,scores={R_iron_count=1..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache