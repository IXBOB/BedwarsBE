#游戏开始后加入观战
gamemode spectator @s
scoreboard players set @s "存活" 0
tag @s add from_lobby_spectator
scoreboard players set @s "出局观战" 1
tp @s 0 206 0