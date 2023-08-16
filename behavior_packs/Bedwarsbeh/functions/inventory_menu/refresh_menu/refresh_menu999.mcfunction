clear @s
playsound random.click @s
replaceitem entity @s slot.inventory 0 bedwars:menu_back 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s slot.inventory 12 keep bedwars:menu999_purchase_confirm 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s slot.inventory 14 keep bedwars:menu999_purchase_cancel 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}