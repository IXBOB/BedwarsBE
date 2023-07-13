#title.times
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ title @a[scores={"分队"=5}] times 0 160 0
#title平局
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ title @a[scores={"分队"=5}] title §e§lDRAW
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ title @a[scores={"分队"=5}] subtitle §cno player wins
#tellraw
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ function gameEND_tellraw_draw
#tag-degrade
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ tag @a remove degrade
#difficulty.peaceful
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ difficulty peaceful
#reset重置百分数
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset * "重置百分数"
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_8 "游戏显示"
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_2_event_2 "游戏显示"
#放置倒计时区域的红石块
setblock 267 4 310 redstone_block