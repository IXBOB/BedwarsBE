execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2}] ~~~ replaceitem entity @s slot.inventory 0 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2}] ~~~ replaceitem entity @s slot.inventory 10 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2}] ~~~ replaceitem entity @s slot.inventory 11 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2}] ~~~ replaceitem entity @s slot.inventory 12 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2},hasitem={location=slot.inventory,slot=0,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add change_to_menu1
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2},hasitem={location=slot.inventory,slot=10,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add particle_purchase_none
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2},hasitem={location=slot.inventory,slot=11,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add particle_purchase_villagerhappy
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2},hasitem={location=slot.inventory,slot=12,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add particle_purchase_fire
