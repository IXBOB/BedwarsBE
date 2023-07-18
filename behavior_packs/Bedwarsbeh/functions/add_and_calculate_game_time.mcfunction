scoreboard players add @s game.time.sec.1 1
scoreboard players add @s[scores={game.time.sec.1=10..}] game.time.sec.2 1
scoreboard players set @s[scores={game.time.sec.1=10..}] game.time.sec.1 0
scoreboard players add @s[scores={game.time.sec.2=6..}] game.time.min.1 1
scoreboard players set @s[scores={game.time.sec.2=6..}] game.time.sec.2 0
scoreboard players add @s[scores={game.time.min.1=10..}] game.time.min.2 1
scoreboard players set @s[scores={game.time.min.1=10..}] game.time.min.1 0