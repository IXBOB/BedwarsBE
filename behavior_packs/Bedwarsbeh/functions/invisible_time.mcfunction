scoreboard players add @s invisible_time -1
particle bedwars:footprint ~ ~0.01 ~
playanimation @s[scores={invisible_time=..0}] animation.bedwars_player_invisible default 0
effect @s[scores={invisible_time=..0}] clear 