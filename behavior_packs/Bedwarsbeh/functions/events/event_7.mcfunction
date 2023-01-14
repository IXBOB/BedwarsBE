execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=127}] ~~~ scoreboard players set "§4BED DESTRUCTION warn" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=127}] ~~~ scoreboard players set @s "显示事件" 7
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=127}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §4§lAll beds will be destroyed in 2 minutes." } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4BED DESTRUCTION warn" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 128