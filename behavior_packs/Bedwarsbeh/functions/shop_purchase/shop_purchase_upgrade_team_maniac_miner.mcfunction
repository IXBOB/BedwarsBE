tag @s[scores={"分队"=1}] add upgrade_red_maniac_miner
tag @s[scores={"分队"=2}] add upgrade_blue_maniac_miner
tag @s[scores={"分队"=3}] add upgrade_yellow_maniac_miner
tag @s[scores={"分队"=4}] add upgrade_green_maniac_miner
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_team_maniac_miner"} ] }
execute @s[tag=upgrade_red_maniac_miner] ~~~ tellraw @a[scores={"分队"=1}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_maniac_miner]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_maniac_miner"}] }
execute @s[tag=upgrade_blue_maniac_miner] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_maniac_miner]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_maniac_miner"}] }
execute @s[tag=upgrade_yellow_maniac_miner] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_maniac_miner]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_maniac_miner"}] }
execute @s[tag=upgrade_green_maniac_miner] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "selector" :  "@a[tag=want_upgrade_maniac_miner]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_upgrade_team_maniac_miner"}] }
playsound note.pling @s ~~~
execute @s[tag=upgrade_red_maniac_miner,scores={红急迫等级=0}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_red_maniac_miner,scores={红急迫等级=0}] ~~~ xp -300L @s
execute @s[tag=upgrade_red_maniac_miner,scores={红急迫等级=1}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_red_maniac_miner,scores={红急迫等级=1}] ~~~ xp -400L @s
execute @s[tag=upgrade_blue_maniac_miner,scores={蓝急迫等级=0}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_blue_maniac_miner,scores={蓝急迫等级=0}] ~~~ xp -300L @s
execute @s[tag=upgrade_blue_maniac_miner,scores={蓝急迫等级=1}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_blue_maniac_miner,scores={蓝急迫等级=1}] ~~~ xp -400L @s
execute @s[tag=upgrade_yellow_maniac_miner,scores={黄急迫等级=0}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_yellow_maniac_miner,scores={黄急迫等级=0}] ~~~ xp -300L @s
execute @s[tag=upgrade_yellow_maniac_miner,scores={黄急迫等级=1}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_yellow_maniac_miner,scores={黄急迫等级=1}] ~~~ xp -400L @s
execute @s[tag=upgrade_green_maniac_miner,scores={绿急迫等级=0}] ~~~ scoreboard players add @s own_xp -300
execute @s[tag=upgrade_green_maniac_miner,scores={绿急迫等级=0}] ~~~ xp -300L @s
execute @s[tag=upgrade_green_maniac_miner,scores={绿急迫等级=1}] ~~~ scoreboard players add @s own_xp -400
execute @s[tag=upgrade_green_maniac_miner,scores={绿急迫等级=1}] ~~~ xp -400L @s
execute @s[tag=upgrade_red_maniac_miner] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "红急迫等级" 1
execute @s[tag=upgrade_blue_maniac_miner] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝急迫等级" 1
execute @s[tag=upgrade_yellow_maniac_miner] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄急迫等级" 1
execute @s[tag=upgrade_green_maniac_miner] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿急迫等级" 1
execute @s[tag=upgrade_red_maniac_miner] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/red/maniac_miner
execute @s[tag=upgrade_blue_maniac_miner] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/blue/maniac_miner
execute @s[tag=upgrade_yellow_maniac_miner] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/yellow/maniac_miner
execute @s[tag=upgrade_green_maniac_miner] ~~~ execute @e[type=armor_stand,name=main] ~~~ function refresh_map/game/sign/green/maniac_miner
tag @s remove upgrade_red_maniac_miner
tag @s remove upgrade_blue_maniac_miner
tag @s remove upgrade_yellow_maniac_miner
tag @s remove upgrade_green_maniac_miner