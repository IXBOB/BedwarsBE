scoreboard players operation @s R_gold_c_cache = @s R_gold_count
scoreboard players operation @s R_gold_c_cache /= @e[type=armor_stand,name=main] constant_8
execute @s[scores={R_gold_c_cache=8..}] ~~~ give @a[tag=get_gold_red] gold_ingot 8
scoreboard players add @s[scores={R_gold_c_cache=8..}] R_gold_c_cache -8
execute @s[scores={R_gold_c_cache=4..}] ~~~ give @a[tag=get_gold_red] gold_ingot 4
scoreboard players add @s[scores={R_gold_c_cache=4..}] R_gold_c_cache -4
execute @s[scores={R_gold_c_cache=2..}] ~~~ give @a[tag=get_gold_red] gold_ingot 2
scoreboard players add @s[scores={R_gold_c_cache=2..}] R_gold_c_cache -2
execute @s[scores={R_gold_c_cache=1..}] ~~~ give @a[tag=get_gold_red] gold_ingot 1
scoreboard players add @s[scores={R_gold_c_cache=1..}] R_gold_c_cache -1