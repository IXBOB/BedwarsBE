scoreboard players set @e[type=armor_stand,name=main] guide_running 1
scoreboard players set @e[type=armor_stand,name=main] lobby_guide_num 1
function lobby_guide/delete_guide_prepare
event entity @e[type=bedwars:lobby_guide_timer] bedwars:remove_self
summon bedwars:lobby_guide_timer -188 200 -202
function lobby_guide/change_to_guide_1