execute @s[scores={"分队"=1..4},lm=300] ~~~ tag @s add want_upgrade_protection
execute @s[scores={"分队"=1..4},l=299] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=1..4},l=299] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红保护等级"=..2}] ~~~ tag @a[tag=want_upgrade_protection,scores={"分队"=1}] add upgrade_red_protection
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=..2}] ~~~ tag @a[tag=want_upgrade_protection,scores={"分队"=2}] add upgrade_blue_protection
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄保护等级"=..2}] ~~~ tag @a[tag=want_upgrade_protection,scores={"分队"=3}] add upgrade_yellow_protection
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿保护等级"=..2}] ~~~ tag @a[tag=want_upgrade_protection,scores={"分队"=4}] add upgrade_green_protection
execute @s[tag=want_upgrade_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team PROTECTION" } ] }
execute @s[tag=upgrade_red_protection] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_protection_red]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_protection"}] }
execute @s[tag=upgrade_blue_protection] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_protection_blue]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_protection"}] }
execute @s[tag=upgrade_yellow_protection] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_protection_yellow]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_protection"}] }
execute @s[tag=upgrade_green_protection] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_protection_green]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_protection"}] }
execute @s[tag=want_upgrade_protection] ~~~ playsound note.pling @s ~~~
execute @s[tag=want_upgrade_protection] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=want_upgrade_protection] ~~~ xp -300L @s
execute @s[tag=upgrade_red_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红保护等级" 1
execute @s[tag=upgrade_blue_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝保护等级" 1
execute @s[tag=upgrade_yellow_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄保护等级" 1
execute @s[tag=upgrade_green_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿保护等级" 1
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=want_upgrade_sharpness] ~~~ function shop_purchase/upgrade_team/upgrade_team_protection
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=want_upgrade_sharpness] ~~~ function shop_purchase/upgrade_team/upgrade_team_protection_old2
tag @s remove want_upgrade_protection
tag @s remove upgrade_red_protection
tag @s remove upgrade_blue_protection
tag @s remove upgrade_yellow_protection
tag @s remove upgrade_green_protection