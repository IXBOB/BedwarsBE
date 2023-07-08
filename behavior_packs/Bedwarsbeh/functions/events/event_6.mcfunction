execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set text.scoreboard.ingameinfo.event_6 "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set @s "显示事件" 6
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=126}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§lBedwars>> §d§lThe Ender Pearl piglins have been spawned on the emerald island! Kill them to get the ender pearl." } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.event_6 "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 127