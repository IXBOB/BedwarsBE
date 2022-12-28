execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §aEmerald generators §ehave been upgraded to Tier §cII " } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿宝石等级" 2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ scoreboard players reset "§aEmerald II" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 122