execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=127}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_7 "游戏显示" 300
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=127}] ~~~ scoreboard players set @s "显示事件" 7
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=127}] ~~~ scoreboard players set @s "事件倒计时" 300
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §r§cAll beds have been destroyed. No one is able to respawn now." } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBED WARS >> §r§eGame will draw after 300 seconds." } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_7 "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ title @a[scores={"分队"=1..4,"存活"=1}] title §c§lBed destroyed
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ title @a[scores={"分队"=1..4,"存活"=1}] subtitle all the beds have been destroyed
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "红床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "蓝床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "黄床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿床存活" 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 47 0 185 47 air 0 replace bedwars:red_bed_head
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 46 0 185 46 air 0 replace bedwars:red_bed_foot
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 -47 0 185 -47 air 0 replace bedwars:blue_bed_head
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 -46 0 185 -46 air 0 replace bedwars:blue_bed_foot
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 46 185 0 46 185 0 air 0 replace bedwars:yellow_bed_head
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 47 185 0 47 185 0 air 0 replace bedwars:yellow_bed_foot
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill -46 185 0 -46 185 0 air 0 replace bedwars:green_bed_head
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill -47 185 0 -47 185 0 air 0 replace bedwars:green_bed_foot
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ playsound mob.enderdragon.growl @a[scores={"分队"=1..4}]
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 301