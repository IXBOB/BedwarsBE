function lobby_guide/delete_guide_5
execute @e[type=armor_stand,name=main,scores={language=1}] ~~~ function lobby_guide/guide_board/cn/prepare
execute @e[type=armor_stand,name=main,scores={language=2}] ~~~ function lobby_guide/guide_board/en/prepare
scoreboard players set @e[type=armor_stand,name=main] guide_running 0
event entity @e[type=bedwars:lobby_guide_timer] bedwars:remove_self