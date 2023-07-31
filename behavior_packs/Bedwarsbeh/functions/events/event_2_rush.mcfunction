execute @s[scores={gameSTART=1,"游戏模式"=2,"显示事件"=1,"事件倒计时"=901}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_2_event_2 "显示" 600
execute @s[scores={gameSTART=1,"游戏模式"=2,"显示事件"=1,"事件倒计时"=901}] ~~~ scoreboard players set @s "显示事件" 2
execute @s[scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=901}] ~~~ scoreboard players set @s "事件倒计时" 600
execute @s[scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=899}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_normal_draw"} ] }
execute @s[scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=..0}] ~~~ function set_draw_condition
execute @s[scores={gameSTART=2,"游戏模式"=2,"显示事件"=2,"事件倒计时"=..0}] ~~~ function test_draw
