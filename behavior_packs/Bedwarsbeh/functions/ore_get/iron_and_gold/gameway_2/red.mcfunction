tag @s add get_iron_red
execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..}] ~~~ function utils/gameway_2_red_iron_point_give_iron
tag @s remove get_iron_red
tag @s add get_gold_red
execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=7..}] ~~~ function utils/gameway_2_red_gold_point_give_gold
tag @s remove get_gold_red
tag @s add cache
execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..}] ~~~ execute @a[tag=cache] ~~~ playsound bedwars.pick_items_pop @s ~~~ 0.5
tag @s remove cache