execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=1,"事件倒计时"=122}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_2 "游戏显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=1,"事件倒计时"=122}] ~~~ scoreboard players set @s "显示事件" 2
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=122}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§b§lDiamond generators §ehave been upgraded to Tier §cII" } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @s "钻石等级" 2
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_2 "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 123

execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=2,"显示事件"=1,"事件倒计时"=901}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_2_event_2 "游戏显示" 600
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=2,"显示事件"=1,"事件倒计时"=901}] ~~~ scoreboard players set @s "显示事件" 2
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=901}] ~~~ scoreboard players set @s "事件倒计时" 600
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=899}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§e§lGame will draw after 600 seconds." } ] }
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "分队" 5
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=2,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] gameSTART 2
execute @e[type=armor_stand,scores={gameSTART=2,"游戏模式"=2,"显示事件"=2,"事件倒计时"=..0}] ~~~ function test_draw
