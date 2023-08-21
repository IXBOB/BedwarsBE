tag @s remove waiting
scoreboard players set @e[type=armor_stand,name=main] "大厅人数" 0
execute @e[type=player,tag=waiting] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 2
tellraw @a { "rawtext" : [{"text":"§7"},{"selector":"@s"},{"translate":"text.tellraw.waiting.player_leave"},{"text":"§e ("},{ "score" : { "name" : "@e[type=armor_stand,name=main]" , "objective" : "大厅人数"}},{"text":"/"},{ "score" : { "name" : "@e[type=armor_stand,name=main]" , "objective" : "总需人数"}},{"text":")"} ] }
tp @s -200 200 -200
function set_gameSTART0_waiting_scoreboard
clear @s bedwars:waiting_back_to_hub