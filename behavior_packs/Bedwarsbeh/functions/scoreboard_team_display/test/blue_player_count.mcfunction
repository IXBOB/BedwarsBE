execute @s[scores={"蓝床存活"=0}] ~~~ scoreboard players set @a[scores={"分队"=2}] "存活" 0
execute @s[scores={"蓝床存活"=0}] ~~~ scoreboard players set @e[type=player,scores={"分队"=2},x=-63,y=92,z=-63,dx=126,dy=120,dz=126,m=0] "存活" 1
execute @s[scores={"蓝床存活"=0}] ~~~ scoreboard players set @e[type=player,scores={"分队"=2,respawning=1}] "存活" 1
scoreboard players set @s[scores={"蓝床存活"=0}] "蓝剩人数" 0
execute @s[scores={"蓝床存活"=0}] ~~~ execute @e[type=player,scores={"分队"=2,"存活"=1}] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=0}] "蓝剩人数" 1
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=1}] ~~~ function scoreboard_team_display/set/blue/player_count_1
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=2}] ~~~ function scoreboard_team_display/set/blue/player_count_2
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=3}] ~~~ function scoreboard_team_display/set/blue/player_count_3
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=4}] ~~~ function scoreboard_team_display/set/blue/player_count_4
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=5}] ~~~ function scoreboard_team_display/set/blue/player_count_5
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=6}] ~~~ function scoreboard_team_display/set/blue/player_count_6
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=7}] ~~~ function scoreboard_team_display/set/blue/player_count_7
execute @s[scores={"蓝床存活"=0,"蓝剩人数"=8}] ~~~ function scoreboard_team_display/set/blue/player_count_8