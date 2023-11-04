scoreboard players operation @s G_iron_c_cache = @s G_iron_count
execute @s[scores={G_iron_c_cache=128..}] ~~~ give @a[tag=get_iron_green] iron_ingot 128
scoreboard players add @s[scores={G_iron_c_cache=128..}] G_iron_c_cache -128
execute @s[scores={G_iron_c_cache=64..}] ~~~ give @a[tag=get_iron_green] iron_ingot 64
scoreboard players add @s[scores={G_iron_c_cache=64..}] G_iron_c_cache -64
execute @s[scores={G_iron_c_cache=32..}] ~~~ give @a[tag=get_iron_green] iron_ingot 32
scoreboard players add @s[scores={G_iron_c_cache=32..}] G_iron_c_cache -32
execute @s[scores={G_iron_c_cache=16..}] ~~~ give @a[tag=get_iron_green] iron_ingot 16
scoreboard players add @s[scores={G_iron_c_cache=16..}] G_iron_c_cache -16
execute @s[scores={G_iron_c_cache=8..}] ~~~ give @a[tag=get_iron_green] iron_ingot 8
scoreboard players add @s[scores={G_iron_c_cache=8..}] G_iron_c_cache -8
execute @s[scores={G_iron_c_cache=4..}] ~~~ give @a[tag=get_iron_green] iron_ingot 4
scoreboard players add @s[scores={G_iron_c_cache=4..}] G_iron_c_cache -4
execute @s[scores={G_iron_c_cache=2..}] ~~~ give @a[tag=get_iron_green] iron_ingot 2
scoreboard players add @s[scores={G_iron_c_cache=2..}] G_iron_c_cache -2
execute @s[scores={G_iron_c_cache=1..}] ~~~ give @a[tag=get_iron_green] iron_ingot 1
scoreboard players add @s[scores={G_iron_c_cache=1..}] G_iron_c_cache -1