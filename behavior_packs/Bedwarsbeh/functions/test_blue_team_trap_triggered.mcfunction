#检测蓝队陷阱被触发
execute @e[type=player,tag=!have_triggered_blue_trap,scores={"分队"=!2,"出局观战"=0},x=-5,y=176,z=-58,dx=22,dy=22,dz=22] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1,blue_trap_sum=1..3}] ~~~ function on_blue_team_trap_triggered
tag @a remove have_triggered_blue_trap
tag @e[type=player,scores={"分队"=!2,"出局观战"=0},x=-5,y=176,z=-58,dx=22,dy=22,dz=22] add have_triggered_blue_trap