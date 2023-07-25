execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=1,"事件倒计时"=122}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_2 "显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=1,"事件倒计时"=122}] ~~~ scoreboard players set @s "显示事件" 2
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=122}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_diamond_generators_upgrade_to_tier_2"} ] }
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @s "钻石等级" 2
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_2 "显示"
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 123
execute @e[type=armor_stand,scores={gameSTART=1,"游戏模式"=1,"显示事件"=2,"事件倒计时"=123}] ~~~ function events/event_3
