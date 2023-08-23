#重置game_uid(游戏对局内uid)
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset @a game_uid
#增加总游戏数
scoreboard players add @a[scores={"分队"=1..4}] "总游戏数" 1
#删除大厅悬浮字
event entity @e[type=bedwars:lobby_float_text,x=-204,y=201,z=-193,c=1,r=1] bedwars:remove_self
