#title胜利
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ title @a[scores={"分队"=2}] times 0 160 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ titleraw @a[scores={"分队"=2}] title { "rawtext" : [{"translate":"text.title.ingameinfo.victory"} ] }
#tellraw
function gameEND_tellraw_blue
#firework -> 1
scoreboard players set @a[scores={"分队"=2}] firework 1
#设置计分板显示其它队全部淘汰
scoreboard players set text.scoreboard.ingameinfo.red_team_wiped_out "显示" -5
scoreboard players set text.scoreboard.ingameinfo.yellow_team_wiped_out "显示" -5
scoreboard players set text.scoreboard.ingameinfo.green_team_wiped_out "显示" -5
#title其它队失败
titleraw @a[scores={"分队"=!2}] title { "rawtext" : [{"translate":"text.title.ingameinfo.gameover"} ] }
#删除副标题
title @a subtitle §r
#胜场数+1
scoreboard players add @a[scores={"分队"=2}] "胜场数" 1
#设置计分板显示其它队全部淘汰
scoreboard players reset text.scoreboard.ingameinfo.red_team_left_1 "显示"
scoreboard players reset text.scoreboard.ingameinfo.yellow_team_left_1 "显示"
scoreboard players reset text.scoreboard.ingameinfo.green_team_left_1 "显示"
scoreboard players reset text.scoreboard.ingameinfo.red_team_normal "显示"
scoreboard players reset text.scoreboard.ingameinfo.yellow_team_normal "显示"
scoreboard players reset text.scoreboard.ingameinfo.green_team_normal "显示"
#tag-degrade
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tag @a remove degrade
#difficulty.peaceful
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ difficulty peaceful
#reset重置百分数
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players reset * "重置百分数"
#瞬间恢复(无敌)效果
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ effect @a instant_health 20 255 true

#gameSTART -> 2
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s gameSTART 2

#放置执行游戏结束后指令的实体(after_g_en_exist means:--> after_game_entity_exist)
scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=2}] after_g_en_exist 0
execute @e[type=bedwars:run_command_after_each_game] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=2}] after_g_en_exist 1
execute @e[type=armor_stand,name=main,scores={gameSTART=2,after_g_en_exist=0}] ~~~ summon bedwars:run_command_after_each_game ~~~
execute @e[type=armor_stand,name=main,scores={gameSTART=2,after_g_en_exist=0}] ~~~ scoreboard players set @s after_g_en_exist 0