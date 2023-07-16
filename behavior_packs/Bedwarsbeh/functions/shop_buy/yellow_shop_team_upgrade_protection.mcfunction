execute @s[scores={"分队"=3},lm=300] ~~~ tag @s add want_upgrade_protection_yellow
execute @s[scores={"分队"=3},l=299] ~~~ tellraw @s { "rawtext" : [ { "text" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[scores={"分队"=3},l=299] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄保护等级"=..2}] ~~~ execute @a[tag=want_upgrade_protection_yellow] ~~~ tag @s add upgrade_yellow_protection
execute @a[tag=upgrade_yellow_protection] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_team_upgrade_protection"} ] }
execute @a[tag=upgrade_yellow_protection] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "text" : "§e " } ,{ "selector" :  "@a[tag=want_upgrade_protection_yellow]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_protection"}] }
execute @a[tag=upgrade_yellow_protection] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_yellow_protection] ~~~ xp -300L @s
execute @a[tag=upgrade_yellow_protection] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄保护等级" 1
execute @a[tag=upgrade_yellow_protection] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
tag @a remove want_upgrade_protection_yellow
tag @a remove upgrade_yellow_protection