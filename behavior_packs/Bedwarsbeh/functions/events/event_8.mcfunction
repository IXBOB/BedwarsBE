execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_8 "游戏显示" 300
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set @s "显示事件" 8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=128}] ~~~ scoreboard players set @s "事件倒计时" 300
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "分队" 5
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s gameSTART 2
execute @e[type=armor_stand,scores={gameSTART=2,"显示事件"=8,"事件倒计时"=..0}] ~~~ function test_draw
