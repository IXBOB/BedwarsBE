scoreboard players set @s[scores={iron_spawn_rand=4..}] iron_spawn_rand 1
execute @s[scores={iron_spawn_rand=1}] ~~~ summon bedwars:dropped_iron_ingot ~0.8 ~ ~
execute @s[scores={iron_spawn_rand=1}] ~~~ summon bedwars:dropped_iron_ingot ~0.2 ~ ~
execute @s[scores={iron_spawn_rand=1}] ~~~ summon bedwars:dropped_iron_ingot ~-0.8 ~ ~
execute @s[scores={iron_spawn_rand=2}] ~~~ summon bedwars:dropped_iron_ingot ~1 ~ ~
execute @s[scores={iron_spawn_rand=2}] ~~~ summon bedwars:dropped_iron_ingot ~-0.2 ~ ~
execute @s[scores={iron_spawn_rand=2}] ~~~ summon bedwars:dropped_iron_ingot ~-1 ~ ~
execute @s[scores={iron_spawn_rand=3}] ~~~ summon bedwars:dropped_iron_ingot ~1.2 ~ ~
execute @s[scores={iron_spawn_rand=3}] ~~~ summon bedwars:dropped_iron_ingot ~0.4 ~ ~
execute @s[scores={iron_spawn_rand=3}] ~~~ summon bedwars:dropped_iron_ingot ~-1.2 ~ ~
scoreboard players add @s iron_spawn_rand 1