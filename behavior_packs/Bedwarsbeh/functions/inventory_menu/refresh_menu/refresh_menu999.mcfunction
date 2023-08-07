clear @s
playsound random.click @s
replaceitem entity @s slot.inventory 0 bedwars:menu_back 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=op] slot.inventory 12 keep bedwars:player_green_wool 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=!op] slot.inventory 14 keep bedwars:player_red_wool 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}