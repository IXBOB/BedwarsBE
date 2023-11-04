scoreboard players operation @s B_gold_c_cache = @s B_gold_count
scoreboard players operation @s B_gold_c_cache /= @e[type=armor_stand,name=main] constant_8
execute @s[scores={B_gold_c_cache=8..}] ~~~ give @a[tag=get_gold_blue] gold_ingot 8
scoreboard players add @s[scores={B_gold_c_cache=8..}] B_gold_c_cache -8
execute @s[scores={B_gold_c_cache=4..}] ~~~ give @a[tag=get_gold_blue] gold_ingot 4
scoreboard players add @s[scores={B_gold_c_cache=4..}] B_gold_c_cache -4
execute @s[scores={B_gold_c_cache=2..}] ~~~ give @a[tag=get_gold_blue] gold_ingot 2
scoreboard players add @s[scores={B_gold_c_cache=2..}] B_gold_c_cache -2
execute @s[scores={B_gold_c_cache=1..}] ~~~ give @a[tag=get_gold_blue] gold_ingot 1
scoreboard players add @s[scores={B_gold_c_cache=1..}] B_gold_c_cache -1