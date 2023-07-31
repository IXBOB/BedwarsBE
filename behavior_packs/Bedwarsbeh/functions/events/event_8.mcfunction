execute @s[scores={"游戏模式"=1,"显示事件"=8,function_tick_20=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_8 "显示" -1
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=301}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_8 "显示" 300
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=301}] ~~~ scoreboard players set @s "显示事件" 8
execute @s[scores={gameSTART=1,"显示事件"=8,"事件倒计时"=301}] ~~~ scoreboard players set @s "事件倒计时" 300
execute @s[scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ function set_draw_condition
execute @s[scores={gameSTART=2,"显示事件"=8,"事件倒计时"=..0}] ~~~ function test_draw
