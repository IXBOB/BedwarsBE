#title胜利
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ title @a[scores={"分队"=3}] times 0 160 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ title @a[scores={"分队"=3}] title §6§lVICTORY
#tellraw
function gameEND_tellraw_yellow
#firework -> 1
scoreboard players set @a[scores={"分队"=3}] firework 1
#设置计分板显示其它队全部淘汰
scoreboard players set text.scoreboard.ingameinfo.red_team_wiped_out "游戏显示" -5
scoreboard players set text.scoreboard.ingameinfo.blue_team_wiped_out "游戏显示" -5
scoreboard players set text.scoreboard.ingameinfo.green_team_wiped_out "游戏显示" -5
#title其它队失败
title @a[scores={"分队"=!3}] title §c§lGAME OVER
#删除副标题
title @a subtitle §r
#胜场数+1
scoreboard players add @a[scores={"分队"=3}] "胜场数" 1
#设置计分板显示其它队全部淘汰
scoreboard players reset text.scoreboard.ingameinfo.red_team_left_1 "游戏显示"
scoreboard players reset text.scoreboard.ingameinfo.blue_team_left_1 "游戏显示"
scoreboard players reset text.scoreboard.ingameinfo.green_team_left_1 "游戏显示"
scoreboard players reset text.scoreboard.ingameinfo.red_team_normal "游戏显示"
scoreboard players reset text.scoreboard.ingameinfo.blue_team_normal "游戏显示"
scoreboard players reset text.scoreboard.ingameinfo.green_team_normal "游戏显示"

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

#放置倒计时区域的红石块
setblock 267 4 310 redstone_block




















