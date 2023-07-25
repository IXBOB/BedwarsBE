execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu2] ~~~ clear @s
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu2] ~~~ scoreboard players set @s menu_page 2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu2] ~~~ tag @s add refresh_menu2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu2] ~~~ tag @s remove change_to_menu2
