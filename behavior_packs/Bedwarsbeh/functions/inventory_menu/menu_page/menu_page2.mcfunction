replaceitem entity @s slot.inventory 0 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 10 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 11 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 12 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[hasitem={location=slot.inventory,slot=0,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/change_to_menu/change_to_menu1
execute @s[hasitem={location=slot.inventory,slot=10,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu2-particle_purchase/menu2-particle_purchase_none
execute @s[hasitem={location=slot.inventory,slot=11,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu2-particle_purchase/menu2-particle_purchase_villagerhappy
execute @s[hasitem={location=slot.inventory,slot=12,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu2-particle_purchase/menu2-particle_purchase_fire
