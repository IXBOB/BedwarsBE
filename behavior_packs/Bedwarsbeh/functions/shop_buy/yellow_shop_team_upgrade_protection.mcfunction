execute @s[scores={"分队"=3},lm=300] ~~~ tag @s add want_upgrade_protection_yellow
execute @s[scores={"分队"=3},l=299] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYou don't have enough levels" } ] }
execute @s[scores={"分队"=3},l=299] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_yellow] ~~~ tag @s add upgrade_yellow_protection
execute @a[tag=upgrade_yellow_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou upgraded the §r§6team PROTECTION" } ] }
execute @a[tag=upgrade_yellow_protection] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "text" : "§Shop · team upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_protection_yellow]"},{ "text" : "§f§l upgraded the team PROTECTION" }] }
execute @a[tag=upgrade_yellow_protection] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_yellow_protection] ~~~ xp -300L @s
execute @a[tag=upgrade_yellow_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄保护等级" 1
execute @a[tag=upgrade_yellow_protection] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
tag @a remove want_upgrade_protection_yellow
tag @a remove upgrade_yellow_protection