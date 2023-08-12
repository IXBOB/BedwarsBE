#检测黄队陷阱被触发
execute @e[type=bedwars:base_entity_yellow] ~~~ execute @e[type=player,tag=!have_triggered_yellow_trap,scores={"分队"=!3,"出局观战"=0},r=22] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1,yellow_trap_sum=1..3}] ~~~ function on_yellow_team_trap_triggered
tag @a remove have_triggered_yellow_trap
execute @e[type=bedwars:base_entity_yellow] ~~~ tag @e[type=player,scores={"分队"=!3,"出局观战"=0},r=22] add have_triggered_yellow_trap