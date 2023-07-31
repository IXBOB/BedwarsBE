execute @s[scores={"游戏模式"=1,"显示事件"=4,function_tick_20=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_4 "显示" -1
execute @s[scores={gameSTART=1,"显示事件"=3,"事件倒计时"=124}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_4 "显示" 120
execute @s[scores={gameSTART=1,"显示事件"=3,"事件倒计时"=124}] ~~~ scoreboard players set @s "显示事件" 4
execute @s[scores={gameSTART=1,"显示事件"=4,"事件倒计时"=124}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @s[scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_diamond_generators_upgrade_to_tier_3"} ] }
execute @s[scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ scoreboard players set @s "钻石等级" 3
execute @s[scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_4 "显示"
execute @s[scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 125
execute @s[scores={gameSTART=1,"显示事件"=4,"事件倒计时"=125}] ~~~ function events/event_5