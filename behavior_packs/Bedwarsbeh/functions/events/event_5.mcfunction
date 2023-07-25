execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=125}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_5 "显示" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=4,"事件倒计时"=125}] ~~~ scoreboard players set @s "显示事件" 5
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=125}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_spawn_obsidian_piglins"} ] }
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_5 "显示"
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dObsidian piglin" 0 183 0
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 126
execute @e[type=armor_stand,scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ function events/event_6