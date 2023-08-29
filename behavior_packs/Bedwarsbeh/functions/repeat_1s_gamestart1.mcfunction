#由armor_stand实体事件激活此function
function ore_spawner
function add_and_calculate_game_time
execute @e[type=bedwars:iron_point_red_invisible,x=0,y=200,z=0,c=1] ~~~ event entity @s[tag=!init_complete] bedwars:init_red_invisible_entity
execute @e[type=bedwars:iron_point_blue_invisible,x=0,y=200,z=0,c=1] ~~~ event entity @s[tag=!init_complete] bedwars:init_blue_invisible_entity
execute @e[type=bedwars:iron_point_yellow_invisible,x=0,y=200,z=0,c=1] ~~~ event entity @s[tag=!init_complete] bedwars:init_yellow_invisible_entity
execute @e[type=bedwars:iron_point_green_invisible,x=0,y=200,z=0,c=1] ~~~ event entity @s[tag=!init_complete] bedwars:init_green_invisible_entity