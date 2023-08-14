scoreboard players add @s "无敌时间" -1
effect @s[scores={"无敌时间"=20..}] instant_health 1 255 true
tellraw @s[scores={"无敌时间"=0}] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.invincibility_over"} ] }
scoreboard players set @s[scores={"无敌时间"=0}] "无敌时间" -1