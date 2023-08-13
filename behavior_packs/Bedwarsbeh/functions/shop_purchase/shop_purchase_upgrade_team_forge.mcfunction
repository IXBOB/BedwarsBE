tag @s[scores={"分队"=1}] add upgrade_red_forge
tag @s[scores={"分队"=2}] add upgrade_blue_forge
tag @s[scores={"分队"=3}] add upgrade_yellow_forge
tag @s[scores={"分队"=4}] add upgrade_green_forge
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_team_forge"} ] }
execute @s[tag=upgrade_red_forge] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_forge]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_forge"}] }
execute @s[tag=upgrade_blue_forge] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_forge]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_forge"}] }
execute @s[tag=upgrade_yellow_forge] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_forge]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_forge"}] }
execute @s[tag=upgrade_green_forge] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_forge]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_forge"}] }
playsound note.pling @s ~~~
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=0}] ~~~ scoreboard players add @s own_xp -200
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=0}] ~~~ xp -200L @s
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=1}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=1}] ~~~ xp -300L @s
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=2}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=2}] ~~~ xp -400L @s
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=3}] ~~~ scoreboard players add @s own_xp -500
execute @s[tag=upgrade_red_forge,scores={红锻炉等级=3}] ~~~ xp -500L @s
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=0}] ~~~ scoreboard players add @s own_xp -200
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=0}] ~~~ xp -200L @s
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=1}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=1}] ~~~ xp -300L @s
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=2}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=2}] ~~~ xp -400L @s
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=3}] ~~~ scoreboard players add @s own_xp -500
execute @s[tag=upgrade_blue_forge,scores={蓝锻炉等级=3}] ~~~ xp -500L @s
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=0}] ~~~ scoreboard players add @s own_xp -200
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=0}] ~~~ xp -200L @s
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=1}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=1}] ~~~ xp -300L @s
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=2}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=2}] ~~~ xp -400L @s
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=3}] ~~~ scoreboard players add @s own_xp -500
execute @s[tag=upgrade_yellow_forge,scores={黄锻炉等级=3}] ~~~ xp -500L @s
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=0}] ~~~ scoreboard players add @s own_xp -200
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=0}] ~~~ xp -200L @s
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=1}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=1}] ~~~ xp -300L @s
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=2}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=2}] ~~~ xp -400L @s
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=3}] ~~~ scoreboard players add @s own_xp -500
execute @s[tag=upgrade_green_forge,scores={绿锻炉等级=3}] ~~~ xp -500L @s
execute @s[tag=upgrade_red_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红锻炉等级" 1
execute @s[tag=upgrade_blue_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝锻炉等级" 1
execute @s[tag=upgrade_yellow_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄锻炉等级" 1
execute @s[tag=upgrade_green_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿锻炉等级" 1
execute @s[tag=upgrade_red_forge] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/red/forge
execute @s[tag=upgrade_blue_forge] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/blue/forge
execute @s[tag=upgrade_yellow_forge] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/yellow/forge
execute @s[tag=upgrade_green_forge] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/green/forge
tag @s remove upgrade_red_forge
tag @s remove upgrade_blue_forge
tag @s remove upgrade_yellow_forge
tag @s remove upgrade_green_forge