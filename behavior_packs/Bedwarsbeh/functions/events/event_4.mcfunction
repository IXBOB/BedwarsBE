execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=124}] ~~~ scoreboard players set "§bDiamond III" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=124}] ~~~ scoreboard players set @s "显示事件" 4
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=124}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §bDiamond generators §ehave been upgraded to Tier §cIII " } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ scoreboard players set @s "钻石等级" 3
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ scoreboard players reset "§bDiamond III" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 125