execute @s[scores={"分队"=3},lm=400] ~~~ tag @s add want_upgrade_sharpness_yellow
execute @s[scores={"分队"=3},l=399] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_item_denied"} ] }
execute @s[scores={"分队"=3},l=399] ~~~ playsound mob.endermen.portal @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄锋利等级"=..2}] ~~~ execute @a[tag=want_upgrade_sharpness_yellow] ~~~ tag @s add upgrade_yellow_strength
execute @a[tag=upgrade_yellow_strength] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_team_upgrade_sharpness"} ] }
execute @a[tag=upgrade_yellow_strength] ~~~ tellraw @a[scores={"分队"=3}] { "rawtext" : [ { "text" : "§e " } ,{ "selector" :  "@a[tag=want_upgrade_sharpness_yellow]"},{"translate":"text.tellraw.ingameinfo.team_member_purchase_team_upgrade_sharpness"}] }
execute @a[tag=upgrade_yellow_strength] ~~~ playsound note.pling @s ~~~
execute @a[tag=upgrade_yellow_strength] ~~~  xp -400L @s
execute @a[tag=upgrade_yellow_strength] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=1},name=main] "黄锋利等级" 1
execute @a[tag=upgrade_yellow_strength] ~~~ function team_upgrade_PROTECTIONandSHARPNESS
tag @a remove want_upgrade_sharpness_yellow
tag @a remove upgrade_yellow_strength