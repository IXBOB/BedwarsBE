
execute @s[scores={"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ titleraw @a[scores={"分队"=1}] title { "rawtext" : [{"translate":"text.title.ingameinfo.trap_triggered"} ] }
execute @s[scores={"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ titleraw @a[scores={"分队"=1}] subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.trap_triggered_prompt_enemy"} ] }
execute @s[scores={"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ playsound mob.endermen.portal @a[scores={"分队"=1}]
execute @s[scores={"红陷阱等级"=1}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 0
execute @s[scores={"红陷阱等级"=2}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @s[scores={"红陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s mining_fatigue 10 1
execute @s[scores={"红陷阱等级"=3}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ effect @s blindness 10 0
execute @s[scores={"红陷阱等级"=1..3}] ~~~ execute @e[type=player,scores={"分队"=!1,"出局观战"=0},x=-5,y=176,z=32,dx=10,dy=22,dz=26] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红陷阱等级" 0