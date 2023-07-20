execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_villagerhappy] ~~~ tag @s add refresh_menu2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_villagerhappy] ~~~ scoreboard players set @s select_particle 1
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_villagerhappy] ~~~ tag @s remove particle_purchase_villagerhappy
 