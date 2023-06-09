#重置等待显示计分板并显示
scoreboard players reset * "等待显示"
scoreboard players set §r "等待显示" 0
execute @e[type=armor_stand,name=main,scores={"游戏模式"=1}] ~~~ scoreboard players set "Mode: §aNORMAL" "等待显示" -1
execute @e[type=armor_stand,name=main,scores={"游戏模式"=2}] ~~~ scoreboard players set "Mode: §aRUSH" "等待显示" -1
scoreboard players set §r§r "等待显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=1}] ~~~ scoreboard players set "Map: §aWooden Boat" "等待显示" -3
execute @e[type=armor_stand,name=main,scores={"游戏地图"=2}] ~~~ scoreboard players set "Map: §aDesert" "等待显示" -3
execute @e[type=armor_stand,name=main,scores={"游戏地图"=3}] ~~~ scoreboard players set "Map: §aDeep Ocean" "等待显示" -3
scoreboard players set §r§r§r "等待显示" -4
scoreboard players set RESETTING... "等待显示" -5
scoreboard players set §r§r§r§r "等待显示" -6
scoreboard players set "§emtw.so/6nID9e" "等待显示" -7
scoreboard objectives setdisplay sidebar "等待显示"





































