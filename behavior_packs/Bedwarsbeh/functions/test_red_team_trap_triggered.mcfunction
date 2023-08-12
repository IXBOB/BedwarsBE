#检测红队陷阱被触发
execute @e[type=bedwars:base_entity_red] ~~~ execute @e[type=player,tag=!have_triggered_red_trap,scores={"分队"=!1,"出局观战"=0},r=22] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1,red_trap_sum=1..3}] ~~~ function on_red_team_trap_triggered
tag @a remove have_triggered_red_trap
execute @e[type=bedwars:base_entity_red] ~~~ tag @e[type=player,scores={"分队"=!1,"出局观战"=0},r=22] add have_triggered_red_trap