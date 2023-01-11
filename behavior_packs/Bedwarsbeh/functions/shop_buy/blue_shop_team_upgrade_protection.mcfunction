 execute @s[scores={"分队"=2},lm=300] ~~~ tag @s add want_upgrade_protection_blue
 execute @s[scores={"分队"=2},l=299] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
 execute @s[scores={"分队"=2},l=299] ~~~ playsound mob.endermen.portal @s
 execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_blue] ~~~ tag @s add upgrade_blue_protection
 execute @a[tag=upgrade_blue_protection] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §d§lYou upgraded the §r§6team PROTECTION" } ] }
 execute @a[tag=upgrade_blue_protection] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§Shop · team upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_protection_blue]"},{ "text" : "§f§l upgraded the team PROTECTION" }] }
 execute @a[tag=upgrade_blue_protection] ~~~ playsound note.pling @s ~~~
 execute @a[tag=upgrade_blue_protection] ~~~ xp -300L @s
 execute @a[tag=upgrade_blue_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝保护等级" 1
 execute @a[tag=upgrade_blue_protection] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
 tag @a remove want_upgrade_protection_blue
 tag @a remove upgrade_blue_protection