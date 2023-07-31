clear @s
playsound random.click @s
replaceitem entity @s slot.inventory 0 bedwars:menu_back 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute @s[scores={select_particle=!0}] ~~~ replaceitem entity @s slot.inventory 10 bedwars:menu2_particle_none_click 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute @s[scores={select_particle=0}] ~~~ replaceitem entity @s slot.inventory 10 bedwars:menu2_particle_none_selected 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[scores={select_particle=!1,等级=5..}] ~~~ replaceitem entity @s slot.inventory 11 bedwars:menu2_particle_villagerhappy_click 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute @s[scores={select_particle=!1,等级=..4}] ~~~ replaceitem entity @s slot.inventory 11 bedwars:menu2_particle_villagerhappy_disabled 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[scores={select_particle=1}] ~~~ replaceitem entity @s slot.inventory 11 bedwars:menu2_particle_villagerhappy_selected 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[scores={select_particle=!2,等级=10..}] ~~~ replaceitem entity @s slot.inventory 12 bedwars:menu2_particle_fire_click 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute @s[scores={select_particle=!2,等级=..9}] ~~~ replaceitem entity @s slot.inventory 12 bedwars:menu2_particle_fire_disabled 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[scores={select_particle=2}] ~~~ replaceitem entity @s slot.inventory 12 bedwars:menu2_particle_fire_selected 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}