scoreboard players set @s[scores={emer_spawn_rand=4..}] emer_spawn_rand 1
execute @s[scores={emer_spawn_rand=1}] ~~~ summon bedwars:dropped_emerald ~0.2 ~ ~
execute @s[scores={emer_spawn_rand=2}] ~~~ summon bedwars:dropped_emerald ~-0.2 ~ ~
execute @s[scores={emer_spawn_rand=3}] ~~~ summon bedwars:dropped_emerald ~0.4 ~ ~
scoreboard players add @s emer_spawn_rand 1