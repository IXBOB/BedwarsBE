execute @s[scores={"分队"=1..4},lm=400] ~~~ tag @s add want_upgrade_sharpness
execute @s[scores={"分队"=1..4},l=399] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=1..4},l=399] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红锋利等级"=..2}] ~~~ tag @a[tag=want_upgrade_sharpness,scores={"分队"=1}] add upgrade_red_sharpness
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝锋利等级"=..2}] ~~~ tag @a[tag=want_upgrade_sharpness,scores={"分队"=2}] add upgrade_blue_sharpness
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄锋利等级"=..2}] ~~~ tag @a[tag=want_upgrade_sharpness,scores={"分队"=3}] add upgrade_yellow_sharpness
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿锋利等级"=..2}] ~~~ tag @a[tag=want_upgrade_sharpness,scores={"分队"=4}] add upgrade_green_sharpness
execute @s[tag=want_upgrade_sharpness] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team sharpness" } ] }
execute @s[tag=upgrade_red_sharpness] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_sharpness]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_sharpness"}] }
execute @s[tag=upgrade_blue_sharpness] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_sharpness]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_sharpness"}] }
execute @s[tag=upgrade_yellow_sharpness] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_sharpness]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_sharpness"}] }
execute @s[tag=upgrade_green_sharpness] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_sharpness]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_sharpness"}] }
execute @s[tag=want_upgrade_sharpness] ~~~ playsound note.pling @s ~~~
execute @s[tag=want_upgrade_sharpness] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=want_upgrade_sharpness] ~~~ xp -400L @s
execute @s[tag=upgrade_red_sharpness] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红锋利等级" 1
execute @s[tag=upgrade_blue_sharpness] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝锋利等级" 1
execute @s[tag=upgrade_yellow_sharpness] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄锋利等级" 1
execute @s[tag=upgrade_green_sharpness] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿锋利等级" 1
execute @s[tag=want_upgrade_sharpness] ~~~ function shop_purchase/upgrade_team/upgrade_team_sharpness
tag @s remove want_upgrade_sharpness
tag @s remove upgrade_red_sharpness
tag @s remove upgrade_blue_sharpness
tag @s remove upgrade_yellow_sharpness
tag @s remove upgrade_green_sharpness