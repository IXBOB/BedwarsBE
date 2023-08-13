tag @s add want_upgrade_trap
tag @s[scores={"分队"=1}] add upgrade_red_trap
tag @s[scores={"分队"=2}] add upgrade_blue_trap
tag @s[scores={"分队"=3}] add upgrade_yellow_trap
tag @s[scores={"分队"=4}] add upgrade_green_trap
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_team_its_a_trap"} ] }
execute @s[tag=upgrade_red_trap] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_its_a_trap"}] }
execute @s[tag=upgrade_blue_trap] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_its_a_trap"}] }
execute @s[tag=upgrade_yellow_trap] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_its_a_trap"}] }
execute @s[tag=upgrade_green_trap] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_trap]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_its_a_trap"}] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -100
xp -100L @s
execute @s[tag=upgrade_red_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,red_trap_sum=0},name=main] red_trap_1_id 3
execute @s[tag=upgrade_blue_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,blue_trap_sum=0},name=main] blue_trap_1_id 3
execute @s[tag=upgrade_yellow_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,yellow_trap_sum=0},name=main] yellow_trap_1_id 3
execute @s[tag=upgrade_green_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,green_trap_sum=0},name=main] green_trap_1_id 3
execute @s[tag=upgrade_red_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,red_trap_sum=1},name=main] red_trap_2_id 3
execute @s[tag=upgrade_blue_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,blue_trap_sum=1},name=main] blue_trap_2_id 3
execute @s[tag=upgrade_yellow_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,yellow_trap_sum=1},name=main] yellow_trap_2_id 3
execute @s[tag=upgrade_green_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,green_trap_sum=1},name=main] green_trap_2_id 3
execute @s[tag=upgrade_red_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,red_trap_sum=2},name=main] red_trap_3_id 3
execute @s[tag=upgrade_blue_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,blue_trap_sum=2},name=main] blue_trap_3_id 3
execute @s[tag=upgrade_yellow_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,yellow_trap_sum=2},name=main] yellow_trap_3_id 3
execute @s[tag=upgrade_green_trap] ~~~ scoreboard players set @e[type=armor_stand,scores={gameSTART=1,green_trap_sum=2},name=main] green_trap_3_id 3
execute @s[tag=upgrade_red_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] red_trap_sum 1
execute @s[tag=upgrade_blue_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] blue_trap_sum 1
execute @s[tag=upgrade_yellow_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] yellow_trap_sum 1
execute @s[tag=upgrade_green_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] green_trap_sum 1
tag @s remove want_upgrade_trap
tag @s remove upgrade_red_trap
tag @s remove upgrade_blue_trap
tag @s remove upgrade_yellow_trap
tag @s remove upgrade_green_trap