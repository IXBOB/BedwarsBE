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
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_1_event_8 "显示"
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.mode_2_event_2 "显示"

#放置执行游戏结束后指令的实体(after_g_en_exist means:--> after_game_entity_exist)
scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=2}] after_g_en_exist 0
execute @e[type=bedwars:run_command_after_each_game] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=2}] after_g_en_exist 1
execute @e[type=armor_stand,name=main,scores={gameSTART=2,after_g_en_exist=0}] ~~~ summon bedwars:run_command_after_each_game 306 4 306
execute @e[type=armor_stand,name=main,scores={gameSTART=2,after_g_en_exist=0}] ~~~ scoreboard players set @s after_g_en_exist 0