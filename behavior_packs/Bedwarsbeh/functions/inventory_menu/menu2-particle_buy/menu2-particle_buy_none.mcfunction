execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_buy_none] ~~~ tag @s add refresh_menu2
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_buy_none] ~~~ scoreboard players set @s select_particle 0
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_buy_none] ~~~ tag @s remove particle_buy_none