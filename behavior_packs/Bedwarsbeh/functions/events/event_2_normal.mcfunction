execute @s[scores={"游戏模式"=1,"显示事件"=2,function_tick_20=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_2 "显示" -1
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=1,"事件倒计时"=122}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_2 "显示" 120
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=1,"事件倒计时"=122}] ~~~ scoreboard players set @s "显示事件" 2
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=122}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_diamond_generators_upgrade_to_tier_2"} ] }
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @s "钻石等级" 2
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_2 "显示"
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 123
execute @s[scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=123}] ~~~ function events/event_3
