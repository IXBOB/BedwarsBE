execute @s[scores={"分队"=3},lm=400] ~~~ tag @s add want_upgrade_sharpness_yellow
execute @s[scores={"分队"=3},l=399] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels." } ] }
execute @s[scores={"分队"=3},l=399] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄锋利等级"=..2}] ~~~ execute @a[tag=want_upgrade_sharpness_yellow] ~~~ tag @s add upgrade_yellow_strength
execute @a[tag=upgrade_yellow_strength] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §d§lYou upgraded the §r§6team SHARPNESS" } ] }
execute @a[tag=upgrade_yellow_strength] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "text" : "§lShop · Team Upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_sharpness_yellow]"},{ "text" : "§f§l upgraded the team SHARPNESS" }] }
execute @a[tag=upgrade_yellow_strength] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_yellow_strength] ~~~  xp -400L @s
execute @a[tag=upgrade_yellow_strength] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄锋利等级" 1
execute @a[tag=upgrade_yellow_strength] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
tag @a remove want_upgrade_sharpness_yellow
tag @a remove upgrade_yellow_strength