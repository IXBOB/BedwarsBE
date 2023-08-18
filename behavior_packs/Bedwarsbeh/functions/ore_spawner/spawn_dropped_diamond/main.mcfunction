scoreboard players set @s[scores={diam_spawn_rand=4..}] diam_spawn_rand 1
execute @s[scores={diam_spawn_rand=1}] ~~~ summon bedwars:dropped_diamond ~0.2 ~ ~
execute @s[scores={diam_spawn_rand=2}] ~~~ summon bedwars:dropped_diamond ~-0.2 ~ ~
execute @s[scores={diam_spawn_rand=3}] ~~~ summon bedwars:dropped_diamond ~0.4 ~ ~
scoreboard players add @s diam_spawn_rand 1