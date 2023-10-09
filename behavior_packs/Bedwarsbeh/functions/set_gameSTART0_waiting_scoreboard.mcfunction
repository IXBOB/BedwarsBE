#显示当前玩家数
scoreboard players reset text.scoreboard.waitinfo.player_need_more_1 "显示"
scoreboard players reset text.scoreboard.waitinfo.player_need_more_2 "显示"
scoreboard players reset text.scoreboard.waitinfo.player_need_more_3 "显示"
scoreboard players reset text.scoreboard.waitinfo.player_need_more_4 "显示"
scoreboard players reset text.scoreboard.waitinfo.player_need_more_5 "显示"
scoreboard players reset text.scoreboard.waitinfo.player_need_more_6 "显示"
scoreboard players reset text.scoreboard.waitinfo.player_need_more_7 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_2 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_3 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_4 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_5 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_6 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_7 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_8 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_9 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_10 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_11 "显示"
scoreboard players reset text.scoreboard.waitinfo.players_count_12 "显示"
scoreboard players set @s[tag=set.start.players.2] "总需人数" 2
scoreboard players set @s[tag=set.start.players.3] "总需人数" 3
scoreboard players set @s[tag=set.start.players.4] "总需人数" 4
scoreboard players set @s[tag=set.start.players.5] "总需人数" 5
scoreboard players set @s[tag=set.start.players.6] "总需人数" 6
scoreboard players set @s[tag=set.start.players.7] "总需人数" 7
scoreboard players set @s[tag=set.start.players.8] "总需人数" 8
scoreboard players set @s[tag=set.start.players.2] "还需人数" 2
scoreboard players set @s[tag=set.start.players.3] "还需人数" 3
scoreboard players set @s[tag=set.start.players.4] "还需人数" 4
scoreboard players set @s[tag=set.start.players.5] "还需人数" 5
scoreboard players set @s[tag=set.start.players.6] "还需人数" 6
scoreboard players set @s[tag=set.start.players.7] "还需人数" 7
scoreboard players set @s[tag=set.start.players.8] "还需人数" 8
scoreboard players operation @s "还需人数" -= @s "大厅人数"
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=1,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_1 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=2,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_2 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=3,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_3 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=4,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_4 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=5,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_5 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=6,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_6 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=7,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_7 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"还需人数"=7,starting=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.player_need_more_8 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=2,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_2 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=3,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_3 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=4,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_4 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=5,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_5 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=6,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_6 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=7,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_7 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=8,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_8 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=9,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_9 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=10,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_10 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=11,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_11 "显示" -7
execute @s[type=armor_stand,scores={gameSTART=0,"大厅人数"=12,starting=1},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.players_count_12 "显示" -7
#等待玩家时设置显示计分板(人数是否满足)
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_20 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_19 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_18 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_17 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_16 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_15 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_14 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_13 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_12 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_11 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_10 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_9 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_8 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_7 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_6 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_5 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_4 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_3 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_2 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.start_in_1 "显示"
execute @s[type=armor_stand,scores={gameSTART=0},tag=reset_OK] ~~~ scoreboard players set text.scoreboard.waitinfo.waiting_for_more_players "显示" -5
execute @s[type=armor_stand,scores={gameSTART=0,starting=1},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.waiting_for_more_players "显示"