execute @s[scores={"分队"=2},lm=100] ~~~ tag @s add want_upgrade_trigger_blue
execute @s[scores={"分队"=2},l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels." } ] }
execute @s[scores={"分队"=2},l=99] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=..2}] ~~~ execute @a[tag=want_upgrade_trigger_blue] ~~~ tag @s add upgrade_blue_trigger
execute @a[tag=upgrade_blue_trigger] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §d§lYou purchased the §r§6team TRIGGER" } ] }
execute @a[tag=upgrade_blue_trigger] ~~~ tellraw @a[scores={"分队"=2}] { "rawtext" : [ { "text" : "§lShop · Team Upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_trigger_blue]"},{ "text" : "§f§l purchased the team TRIGGER" }] }
execute @a[tag=upgrade_blue_trigger] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_blue_trigger] ~~~ scoreboard players add @s own_xp -100
execute @a[tag=upgrade_blue_trigger] ~~~ xp -100L @s
execute @a[tag=upgrade_blue_trigger] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "蓝陷阱等级" 1
execute @a[tag=upgrade_blue_trigger] ~~~ function team_upgrade_trigger
tag @a remove want_upgrade_trigger_blue
tag @a remove upgrade_blue_trigger