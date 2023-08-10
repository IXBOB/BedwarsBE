#检测绿队陷阱被触发
execute @e[type=player,tag=!have_triggered_green_trap,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=22,dy=22,dz=-22] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1,green_trap_sum=1..3}] ~~~ function on_green_team_trap_triggered
tag @a remove have_triggered_green_trap
tag @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=22,dy=22,dz=-22] add have_triggered_green_trap