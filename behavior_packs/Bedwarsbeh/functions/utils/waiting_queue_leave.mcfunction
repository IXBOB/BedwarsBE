#在不显示tellraw的情况下使玩家退出等待队伍，如需tellraw需另外写
tag @s remove waiting
scoreboard players set @e[type=armor_stand,name=main] "大厅人数" 0
execute @e[type=player,tag=waiting] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 1
tp @s -200 200 -200
function set_gameSTART0_waiting_scoreboard
clear @s bedwars:waiting_back_to_hub
clear @s bedwars:waiting_force_all_players_join