execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ titleraw @a[scores={"分队"=2}] title { "rawtext" : [{"translate":"text.title.ingameinfo.trap_triggered"} ] }
execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ titleraw @a[scores={"分队"=2}] subtitle { "rawtext" : [{"translate":"text.subtitle.ingameinfo.trap_triggered_prompt_enemy"} ] }
execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ playsound mob.endermen.portal @a[scores={"分队"=2}]
execute @s[scores={green_trap_1_id=1}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ effect @s mining_fatigue 8 0 true
execute @s[scores={green_trap_1_id=2}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ summon bedwars:alarm_trap_sound -46 185 0
execute @s[scores={green_trap_1_id=2}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ scoreboard players set @s invisible_time 0
execute @s[scores={green_trap_1_id=2}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ playanimation @s animation.bedwars_player_invisible default 0
execute @s[scores={green_trap_1_id=3}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ effect @s slowness 8 1 true
execute @s[scores={green_trap_1_id=3}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ effect @s blindness 8 1 true
execute @s[scores={green_trap_1_id=4}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ effect @a[scores={"分队"=4}] speed 8 1 true
execute @s[scores={green_trap_1_id=4}] ~~~ execute @e[type=player,scores={"分队"=!4,"出局观战"=0},x=-58,y=176,z=5,dx=10,dy=22,dz=-26] ~~~ effect @a[scores={"分队"=4}] jump_boost 8 1 true
scoreboard players operation @s green_trap_1_id = @s green_trap_2_id
scoreboard players operation @s green_trap_2_id = @s green_trap_3_id
scoreboard players set @s green_trap_3_id 0
scoreboard players add @s green_trap_sum -1