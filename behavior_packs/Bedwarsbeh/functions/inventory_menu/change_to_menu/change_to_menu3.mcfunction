execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu3] ~~~ clear @s
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu3] ~~~ scoreboard players set @s menu_page 3
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu3] ~~~ tag @s add refresh_menu3
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu3] ~~~ tag @s remove change_to_menu3