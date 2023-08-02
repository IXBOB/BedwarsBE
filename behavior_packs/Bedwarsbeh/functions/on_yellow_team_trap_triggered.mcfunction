execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ titleraw @a[scores={"分队"=2}] title { "rawtext" : [{"translate":"text.title.ingameinfo.trap_triggered"} ] }
execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ titleraw @a[scores={"分队"=2}] subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.trap_triggered_prompt_enemy"} ] }
execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ playsound mob.endermen.portal @a[scores={"分队"=2}]
execute @s[scores={yellow_trap_1_id=1}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ effect @s slowness 1 8 true
execute @s[scores={yellow_trap_1_id=1}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ effect @s blindness 1 8 true
execute @s[scores={yellow_trap_1_id=2}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ effect @s speed 1 8 true
execute @s[scores={yellow_trap_1_id=2}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ effect @s jump_boost 1 8 true
execute @s[scores={yellow_trap_1_id=3}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ summon bedwars:alarm_trap_sound 46 185 0
execute @s[scores={yellow_trap_1_id=3}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ scoreboard players set @s invisible_time 0
execute @s[scores={yellow_trap_1_id=3}] ~~~ execute @e[type=player,scores={"分队"=!3,"出局观战"=0},x=58,y=176,z=-5,dx=-10,dy=22,dz=26] ~~~ playanimation @s animation.bedwars_player_invisible default 0
scoreboard players operation @s yellow_trap_1_id = @s yellow_trap_2_id
scoreboard players operation @s yellow_trap_2_id = @s yellow_trap_3_id
scoreboard players set @s yellow_trap_3_id 0
scoreboard players add @s yellow_trap_sum -1