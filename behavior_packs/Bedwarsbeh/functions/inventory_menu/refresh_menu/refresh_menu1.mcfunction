clear @s
playsound random.click @s
replaceitem entity @s slot.inventory 10 bedwars:menu1_particle_item 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=op] slot.inventory 16 keep bedwars:menu1_op_enabled_item 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @s[tag=!op] slot.inventory 16 keep bedwars:menu1_op_disabled_item 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

replaceitem entity @s[tag=waiting] slot.hotbar 8 bedwars:waiting_back_to_hub 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}