scoreboard players set @s[scores={gold_spawn_rand=4..}] gold_spawn_rand 1
execute @s[scores={gold_spawn_rand=1}] ~~~ summon bedwars:dropped_gold_ingot ~0.2 ~ ~
execute @s[scores={gold_spawn_rand=2}] ~~~ summon bedwars:dropped_gold_ingot ~-0.2 ~ ~
execute @s[scores={gold_spawn_rand=3}] ~~~ summon bedwars:dropped_gold_ingot ~0.4 ~ ~
scoreboard players add @s gold_spawn_rand 1