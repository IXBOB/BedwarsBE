execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=2,"事件倒计时"=123}] ~~~ scoreboard players set "§aEmerald III" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=2,"事件倒计时"=123}] ~~~ scoreboard players set @s "显示事件" 3
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=123}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §aEmerald generators §ehave been upgraded to Tier §cIII " } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿宝石等级" 3
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=..0}] ~~~ scoreboard players reset "§aEmerald III" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=3,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 124