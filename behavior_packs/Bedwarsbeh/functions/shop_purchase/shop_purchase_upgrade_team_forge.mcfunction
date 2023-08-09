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
scoreboard players add @s own_xp -300
xp -300L @s
execute @s[tag=upgrade_red_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红锻炉等级" 1
execute @s[tag=upgrade_blue_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝锻炉等级" 1
execute @s[tag=upgrade_yellow_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄锻炉等级" 1
execute @s[tag=upgrade_green_forge] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿锻炉等级" 1
tag @s remove upgrade_red_forge
tag @s remove upgrade_blue_forge
tag @s remove upgrade_yellow_forge
tag @s remove upgrade_green_forge