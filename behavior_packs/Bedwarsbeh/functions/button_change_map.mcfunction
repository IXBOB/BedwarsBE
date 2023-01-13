#按下按钮更换地图
execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=!op] ~~~ tellraw @s { "rawtext":[{"text":"§f§lBED WARS >> §cYou can't change the game map, as you do not have the op tag"}]}
execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=!op] ~~~ setblock -203 201 -196 polished_blackstone_button 1
execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=op] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§lBED WARS >> §aSuccessfully changed the game map. " } ] }
execute @e[type=player,x=-203,y=201,z=-196,r=3,c=1] ~~~ execute @s[tag=op] ~~~ scoreboard players add @e[type=armor_stand,name=main] "地图选择" 1
setblock -203 201 -196 polished_blackstone_button 1
#检测地图选择超过设定范围设为0
execute @e[type=armor_stand,name=main,scores={gameSTART=0,"地图选择"=4..}] ~~~ scoreboard players set @s "地图选择" 0
