execute @s[scores={"游戏模式"=1,"显示事件"=6,function_tick_20=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_6 "显示" -1
execute @s[scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_6 "显示" 120
execute @s[scores={gameSTART=1,"显示事件"=5,"事件倒计时"=126}] ~~~ scoreboard players set @s "显示事件" 6
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=126}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_spawn_ender_pearl_piglins"} ] }
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_normal_bed_self_destroyed_warn"} ] }
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_6 "显示"
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 185 0
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 185 0
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 185 0
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~ ~ ~ summon minecraft:zombie_pigman "§dEnder pearl piglin" 0 185 0
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 301
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=301}] ~~~ function events/event_7