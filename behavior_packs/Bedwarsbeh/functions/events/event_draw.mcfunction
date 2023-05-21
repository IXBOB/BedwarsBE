execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=131}] ~~~ scoreboard players set "§4§lDraw-game over" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=131}] ~~~ scoreboard players set @s "显示事件" 11
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=11,"事件倒计时"=131}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=11,"事件倒计时"=..0}] ~~~ scoreboard players set @a[scores={"分队"=1..2}] "分队" 5
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=11,"事件倒计时"=..0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] gameSTART 2