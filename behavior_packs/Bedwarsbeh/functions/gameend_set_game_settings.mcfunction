#重置game_uid(游戏对局内uid)
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset @a game_uid
#增加总游戏数
scoreboard players add @a[scores={"分队"=1..4}] "总游戏数" 1
#删除大厅悬浮字
tickingarea add -204 201 -193 -204 201 -193
event entity @e[type=bedwars:lobby_float_text,x=-204,y=201,z=-193,c=1,r=2] bedwars:remove_self
tickingarea remove -204 201 -193