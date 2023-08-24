scoreboard players set @e[type=armor_stand,name=main] language 2
event entity @e[type=bedwars:lobby_float_text,x=-200,y=200,z=-200,r=50] bedwars:remove_self
event entity @e[type=bedwars:lobby_info_about_cn,x=-200,y=200,z=-200,r=50] bedwars:remove_self
event entity @e[type=bedwars:lobby_info_contact_cn,x=-200,y=200,z=-200,r=50] bedwars:remove_self
event entity @e[type=bedwars:lobby_info_about_en,x=-200,y=200,z=-200,r=50] bedwars:remove_self
event entity @e[type=bedwars:lobby_info_contact_en,x=-200,y=200,z=-200,r=50] bedwars:remove_self
summon bedwars:lobby_float_text "§eCreator: IXBOB" -199 203 -199
summon bedwars:lobby_info_about_en -205.5 201 -205.5
summon bedwars:lobby_info_contact_en -205.5 200 -205.5
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ function refresh_map/lobby/float_text/display_spectate
execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=reset_OK] ~~~ function refresh_map/lobby/float_text/display_join
execute @e[type=armor_stand,name=main,scores={guide_running=0}] ~~~ function lobby_guide/delete_guide_prepare
execute @e[type=armor_stand,name=main,scores={guide_running=0}] ~~~ function lobby_guide/guide_board/en/prepare