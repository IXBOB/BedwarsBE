tag @s add up_armor
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_armor"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -100
xp -100L @s
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=up_armor,scores={"护甲等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_chainmail_armor
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=up_armor,scores={"护甲等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_chainmail_armor_old2
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=up_armor,scores={"护甲等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_armor
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=up_armor,scores={"护甲等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_armor_old2
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ execute @a[tag=up_armor,scores={"护甲等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_armor
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ execute @a[tag=up_armor,scores={"护甲等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_armor_old2