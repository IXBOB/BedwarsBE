scoreboard players add @s invisible_time -1
execute @s ~ ~0.01 ~ particle bedwars:footprint
execute @s[scores={invisible_time=..0}] ~~~ function invisibility_end