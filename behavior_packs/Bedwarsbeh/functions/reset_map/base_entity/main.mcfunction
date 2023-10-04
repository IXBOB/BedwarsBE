summon bedwars:base_entity_red 0 185 53
summon bedwars:base_entity_blue 0 185 -53
summon bedwars:base_entity_yellow 53 185 0
summon bedwars:base_entity_green -53 185 0

tag @e[type=bedwars:iron_point_red_invisible] add xy.despawn
tag @e[type=bedwars:iron_point_yellow_invisible] add xy.despawn
tag @e[type=bedwars:iron_point_blue_invisible] add xy.despawn
tag @e[type=bedwars:iron_point_green_invisible] add xy.despawn
tag @e[type=bedwars:diamond_point_revolve] add xy.despawn
tag @e[type=bedwars:emerald_point_revolve] add xy.despawn
execute @e[type=bedwars:iron_point_red_invisible,tag=xy.despawn] ~~~ summon bedwars:iron_point_red_invisible
execute @e[type=bedwars:iron_point_yellow_invisible,tag=xy.despawn] ~~~ summon bedwars:iron_point_yellow_invisible
execute @e[type=bedwars:iron_point_blue_invisible,tag=xy.despawn] ~~~ summon bedwars:iron_point_blue_invisible
execute @e[type=bedwars:iron_point_green_invisible,tag=xy.despawn] ~~~ summon bedwars:iron_point_green_invisible
execute @e[type=bedwars:diamond_point_revolve,tag=xy.despawn] ~~~ summon bedwars:diamond_point_revolve
execute @e[type=bedwars:emerald_point_revolve,tag=xy.despawn] ~~~ summon bedwars:emerald_point_revolve
event entity @e[tag=xy.despawn] bedwars:remove_self

scoreboard players set @s "实已重置" 1