execute @s[scores={own_particle_3=1}] ~~~ scoreboard players set @s select_particle 3
execute @s[scores={own_particle_3=1}] ~~~ function inventory_menu/refresh_menu/refresh_menu2
execute @s[scores={own_particle_3=0}] ~~~ scoreboard players set @s "需硬币数" 1000
execute @s[scores={own_particle_3=0}] ~~~ scoreboard players operation @s menu_page.cache = @s menu_page
execute @s[scores={own_particle_3=0}] ~~~ scoreboard players set @s buying_particle 3
execute @s[scores={own_particle_3=0}] ~~~ function inventory_menu/change_to_menu/change_to_menu999