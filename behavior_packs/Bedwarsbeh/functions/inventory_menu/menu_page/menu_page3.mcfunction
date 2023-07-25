execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3}] ~~~ replaceitem entity @s slot.inventory 0 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3}] ~~~ replaceitem entity @s slot.inventory 13 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3}] ~~~ replaceitem entity @s slot.inventory 15 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3},hasitem={location=slot.inventory,slot=0,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add change_to_menu1
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3},hasitem={location=slot.inventory,slot=13,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add remove_start_players_required
execute @e[type=player,x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3},hasitem={location=slot.inventory,slot=15,item=bedwars:menu_pleasewait}] ~ ~ ~ tag @s add add_start_players_required
