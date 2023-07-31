execute @s[scores={"游戏模式"=1,"显示事件"=7,function_tick_20=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_7 "显示" -1
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=301}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_7 "显示" 300
execute @s[scores={gameSTART=1,"显示事件"=6,"事件倒计时"=301}] ~~~ scoreboard players set @s "显示事件" 7
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=301}] ~~~ scoreboard players set @s "事件倒计时" 300
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_all_beds_destroyed"} ] }
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_rush_draw"} ] }
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_7 "显示"
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ titleraw @a[scores={"分队"=1..4,"存活"=1}] title { "rawtext" : [{"translate":"text.title.ingameinfo.bed_destroyed"} ] }
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ titleraw @a[scores={"分队"=1..4,"存活"=1}] subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.event_bed_all_self_destroyed"} ] }
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "红床存活" 0
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "蓝床存活" 0
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "黄床存活" 0
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "绿床存活" 0
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ function scoreboard_team_display/test_bed_exist_and_set
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 47 0 185 47 air 0 replace bedwars:red_bed_head
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 46 0 185 46 air 0 replace bedwars:red_bed_foot
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 -47 0 185 -47 air 0 replace bedwars:blue_bed_head
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 0 185 -46 0 185 -46 air 0 replace bedwars:blue_bed_foot
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 46 185 0 46 185 0 air 0 replace bedwars:yellow_bed_head
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill 47 185 0 47 185 0 air 0 replace bedwars:yellow_bed_foot
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill -46 185 0 -46 185 0 air 0 replace bedwars:green_bed_head
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ fill -47 185 0 -47 185 0 air 0 replace bedwars:green_bed_foot
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ playsound mob.enderdragon.growl @a[scores={"分队"=1..4}]
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=..0}] ~~~ scoreboard players set @s "事件倒计时" 301
execute @s[scores={gameSTART=1,"显示事件"=7,"事件倒计时"=301}] ~~~ function events/event_8