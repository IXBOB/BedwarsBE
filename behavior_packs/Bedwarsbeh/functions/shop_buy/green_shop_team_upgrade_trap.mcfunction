execute @s[scores={"分队"=4},lm=100] ~~~ tag @s add want_upgrade_trap_green
execute @s[scores={"分队"=4},l=99] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=4},l=99] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿陷阱等级"=..2}] ~~~ execute @a[tag=want_upgrade_trap_green] ~~~ tag @s add upgrade_green_trap
execute @a[tag=upgrade_green_trap] ~~~ tellraw @s { "rawtext" : [ { "text" : "§d§lYou purchased the §r§6team trap" } ] }
execute @a[tag=upgrade_green_trap] ~~~ tellraw @a[scores={"分队"=4}] { "rawtext" : [ { "text" : "§lShop · Team Upgrade >> §e " } ,{ "selector" :  "@a[tag=want_upgrade_trap_green]"},{ "text" : "§f§l purchased the team trap" }] }
execute @a[tag=upgrade_green_trap] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_green_trap] ~~~ scoreboard players add @s own_xp -100
execute @a[tag=upgrade_green_trap] ~~~ xp -100L @s
execute @a[tag=upgrade_green_trap] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "绿陷阱等级" 1
execute @a[tag=upgrade_green_trap] ~~~ function team_upgrade_trap
tag @a remove want_upgrade_trap_green
tag @a remove upgrade_green_trap