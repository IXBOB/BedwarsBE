replaceitem entity @s slot.inventory 0 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 12 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s slot.inventory 14 keep bedwars:menu_pleasewait 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[hasitem={location=slot.inventory,slot=0,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu999-ask_purchase_confirm/back
execute @s[hasitem={location=slot.inventory,slot=12,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu999-ask_purchase_confirm/confirm_purchase
execute @s[hasitem={location=slot.inventory,slot=14,item=bedwars:menu_pleasewait}] ~ ~ ~ function inventory_menu/menu999-ask_purchase_confirm/cancel_purchase