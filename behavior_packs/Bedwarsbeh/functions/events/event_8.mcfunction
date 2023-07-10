execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set "§eGame draw" "游戏显示" 300
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set @s "显示事件" 8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=128}] ~~~ scoreboard players set @s "事件倒计时" 300
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "分队" 5
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ function test_draw
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] gameSTART 2