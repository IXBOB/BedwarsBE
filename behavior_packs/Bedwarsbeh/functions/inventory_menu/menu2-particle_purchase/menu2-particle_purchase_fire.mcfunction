execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_fire] ~~~ tag @s add refresh_menu2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_fire] ~~~ scoreboard players set @s select_particle 2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_fire] ~~~ tag @s remove particle_purchase_fire