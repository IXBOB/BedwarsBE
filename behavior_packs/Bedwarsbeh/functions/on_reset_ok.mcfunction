tag @e[type=armor_stand,name=main] add reset_OK
title @a times 0 60 0
titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.lobby_reseting_blank"} ] }
titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.lobby_reset_complete"} ] }
scoreboard players set text.scoreboard.waitinfo.blank_5 "显示" -8
scoreboard players set text.scoreboard.waitinfo.website "显示" -9
scoreboard players set @s reseting 0

scoreboard players set @e[type=armor_stand,name=main] "大厅人数" 0
execute @e[type=player,tag=waiting] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 2
function set_gameSTART0_waiting_scoreboard