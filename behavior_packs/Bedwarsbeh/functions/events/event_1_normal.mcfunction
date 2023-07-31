execute @s[scores={"游戏模式"=1,"显示事件"=1,function_tick_20=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_1 "显示" -1
execute @s[scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_emerald_generators_upgrade_to_tier_2"} ] }
execute @s[scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿宝石等级" 2
execute @s[scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_1 "显示"
execute @s[scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 122
execute @s[scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=122}] ~~~ function events/event_2_normal












