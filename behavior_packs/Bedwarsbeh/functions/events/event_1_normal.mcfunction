execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_emerald_generators_upgrade_to_tier_2"} ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿宝石等级" 2
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_1 "游戏显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 122
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=1,"游戏模式"=1,"事件倒计时"=122}] ~~~ function events/event_2_normal












