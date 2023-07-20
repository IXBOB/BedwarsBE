execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[scores={"防具等级"=..3},lm=100] ~~~ tag @s add up_armor
execute @s[scores={"防具等级"=..3},lm=100] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_armor"} ] }
execute @s[scores={"防具等级"=..3},lm=100] ~~~ playsound note.pling @s ~~~
execute @s[scores={"防具等级"=..3},lm=100] ~~~ scoreboard players add @s own_xp -100
execute @s[scores={"防具等级"=..3},lm=100] ~~~ xp -100L @s
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=up_armor,scores={"防具等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_chainmail_armor
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=up_armor,scores={"防具等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_chainmail_armor_old2
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=up_armor,scores={"防具等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_armor
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=up_armor,scores={"防具等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_armor_old2
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=up_armor,scores={"防具等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_armor
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=up_armor,scores={"防具等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_armor_old2