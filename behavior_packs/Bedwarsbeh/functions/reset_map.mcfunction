#reset(fill)1--------------------
execute @e[type=armor_stand,scores={reseting=1,"游戏地图"=1..4,function_tick_20=20}] ~~~ execute @e[type=armor_stand,name=reset,tag=reset] ~~~ detect ~ ~-1 ~ barrier 0 fill -60 ~176 -60 60 ~176 60 air
#TP盔甲架向上
execute @e[type=armor_stand,scores={reseting=1,"游戏地图"=1..4,function_tick_20=20}] ~~~ execute @e[type=armor_stand,tag=reset,name=reset] ~~~ detect ~ ~-1 ~ barrier 0 tp @s ~ ~1 ~
#fill
execute @e[type=armor_stand,scores={reseting=1,"游戏地图"=1..4,function_tick_20=20}] ~~~ execute @e[type=armor_stand,name=reset,tag=reset] ~~~ detect ~ ~-1 ~ barrier 0 fill -60 ~176 -60 60 ~176 60 air
#TP盔甲架向上
execute @e[type=armor_stand,scores={reseting=1,"游戏地图"=1..4,function_tick_20=20}] ~~~ execute @e[type=armor_stand,tag=reset,name=reset] ~~~ detect ~ ~-1 ~ barrier 0 tp @s ~ ~1 ~

#删除重置时掉落的方块
execute @e[type=armor_stand,scores={reseting=1}] ~~~ execute @e[type=armor_stand,name=reset,tag=reset] ~~~ detect ~ ~-1 ~ barrier 0 kill @e[type=falling_block]

#检测reset完毕
execute @e[type=armor_stand,name=reset,tag=reset] ~~~ detect ~ ~-1 ~ obsidian 0 tag @s add reset_finish
execute @e[type=armor_stand,name=reset,tag=reset_finish] ~~~ tag @s remove reset
execute @e[type=armor_stand,name=reset,tag=reset_finish] ~~~ tag @s remove reset_finish
#重置百分数 +1--------------------
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=..99,function_tick_20=7}] ~~~ scoreboard players add @s "重置百分数" 1
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=..99,function_tick_20=14}] ~~~ scoreboard players add @s "重置百分数" 1
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=..99,function_tick_20=20}] ~~~ scoreboard players add @s "重置百分数" 1
execute @e[type=armor_stand,name=main,scores={reseting=1}] ~~~ titleraw @a subtitle {"rawtext":[{"translate":"text.title.waitinfo.lobby_reseting","with":{"rawtext":[{ "score" : { "name" : "@s" , "objective" : "重置百分数"}}]}}]}
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ tag @e[type=armor_stand,name=main] add reset_OK
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ title @a times 0 60 0
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ titleraw @a title { "rawtext" : [{"translate":"text.title.waitinfo.lobby_reseting_blank"} ] }
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"text.subtitle.waitinfo.lobby_reset_complete"} ] }
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ scoreboard players set text.scoreboard.waitinfo.blank_5 "显示" -8
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ scoreboard players set text.scoreboard.waitinfo.website "显示" -9
execute @e[type=armor_stand,name=main,scores={reseting=1,"重置百分数"=100}] ~~~ scoreboard players set @s reseting 0

#重置各队基地
execute @e[type=armor_stand,name=main,scores={reseting=1,"基已重置"=0,"重置百分数"=50}] ~~~ function reset_map/base/assign
#重置钻岛
execute @e[type=armor_stand,name=main,scores={reseting=1,"钻已重置"=0,"重置百分数"=50}] ~~~ function reset_map/diamond_island
#重置中岛
execute @e[type=armor_stand,name=main,scores={reseting=1,"中已重置"=0,"重置百分数"=50}] ~~~ function reset_map/emerald_island
#删除多余的结构方块
execute @e[type=armor_stand,name=main,scores={reseting=1,"多已删除"=0,"重置百分数"=85}] ~~~ function reset_map/delete_multiple_blocks
#重置商店方块
execute @e[type=armor_stand,name=main,scores={reseting=1,"商已重置"=0,"重置百分数"=86}] ~~~ function reset_map/shop/assign
#重置疾速模式床保护
execute @e[type=armor_stand,name=main,scores={reseting=1,"保已重置"=0,"重置百分数"=86,"游戏模式"=2}] ~~~ function reset_map/rush_bed_protect
