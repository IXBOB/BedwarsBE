execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=130}] ~~~ scoreboard players set "§4Draw warn" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=9,"事件倒计时"=130}] ~~~ scoreboard players set @s "显示事件" 10
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=130}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §4§lThe game will draw in 2 minutes" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4Draw warn" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=10,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 131