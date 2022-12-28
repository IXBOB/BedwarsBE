#游戏未开始传送游戏区玩家到大厅
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=126,dy=40,dz=126] ~~~ effect @s clear
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=126,dy=40,dz=126] ~~~ xp -99999L @s
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=126,dy=40,dz=126] ~~~ tp @s -200 200 -200
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ execute @a[x=-63,y=171,z=-63,dx=127,dy=40,dz=127] ~~~ clear @s