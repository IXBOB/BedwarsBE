#重置显示计分板并显示
scoreboard players reset * "显示"
scoreboard players set text.scoreboard.waitinfo.blank_1 显示 0
execute @e[type=armor_stand,name=main,scores={"游戏模式"=1}] ~~~ scoreboard players set text.scoreboard.waitinfo.mode_1 显示 -1
execute @e[type=armor_stand,name=main,scores={"游戏模式"=2}] ~~~ scoreboard players set text.scoreboard.waitinfo.mode_2 显示 -1
scoreboard players set text.scoreboard.waitinfo.blank_2 显示 -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=1}] ~~~ scoreboard players set text.scoreboard.waitinfo.map_1 显示 -3
execute @e[type=armor_stand,name=main,scores={"游戏地图"=2}] ~~~ scoreboard players set text.scoreboard.waitinfo.map_2 显示 -3
execute @e[type=armor_stand,name=main,scores={"游戏地图"=3}] ~~~ scoreboard players set text.scoreboard.waitinfo.map_3 显示 -3
scoreboard players set text.scoreboard.waitinfo.blank_3 显示 -4
scoreboard players set text.scoreboard.waitinfo.preparing 显示 -5
scoreboard players set text.scoreboard.waitinfo.blank_4 显示 -6
scoreboard players set text.scoreboard.waitinfo.website 显示 -7





































