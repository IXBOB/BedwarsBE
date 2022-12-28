execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set "§4§lBED DESTRUCTION" "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=128}] ~~~ scoreboard players set @s "显示事件" 8
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=128}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §4§lAll beds have been destroyed. No one is able to respawn now." } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players reset "§4§lBED DESTRUCTION" "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s "红床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s "蓝床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ title @a[scores={"分队"=1..2,"存活"=1}] title §c§l- Bed destoryed -
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ title @a[scores={"分队"=1..2,"存活"=1}] subtitle You will no longer respawn
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ playsound mob.enderdragon.growl @a[scores={"分队"=1..2}]
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=8,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 129