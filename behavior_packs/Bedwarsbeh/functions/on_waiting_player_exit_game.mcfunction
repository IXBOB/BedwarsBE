scoreboard players operation @s 大厅人数 = @s WaitingPl.cache2
tellraw @a { "rawtext" : [{"translate":"text.tellraw.waiting.player_exit_game"},{"text":"§e ("},{ "score" : { "name" : "@e[type=armor_stand,name=main]" , "objective" : "大厅人数"}},{"text":"/"},{ "score" : { "name" : "@e[type=armor_stand,name=main]" , "objective" : "总需人数"}},{"text":")"} ] } 
function set_gameSTART0_waiting_scoreboard
scoreboard players set @s WaitingPl.cache 0
scoreboard players set @s WaitingPl.cache2 0