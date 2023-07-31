execute @s[tag=!op] ~~~ function inventory_menu/change_to_menu/change_to_menu1
replaceitem entity @s slot.inventory 0 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 13 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 15 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[hasitem={location=slot.inventory,slot=0,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/change_to_menu/change_to_menu1
execute @s[hasitem={location=slot.inventory,slot=13,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu3-change_start_players_required/remove_players
execute @s[hasitem={location=slot.inventory,slot=15,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu3-change_start_players_required/add_players
