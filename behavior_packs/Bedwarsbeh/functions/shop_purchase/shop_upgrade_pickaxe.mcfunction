tag @s add up_pickaxe
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_pickaxe"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -50
xp -50L @s
execute @s[tag=up_pickaxe,scores={"镐等级"=0}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_wooden_pickaxe
execute @s[tag=up_pickaxe,scores={"镐等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_stone_pickaxe
execute @s[tag=up_pickaxe,scores={"镐等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_pickaxe
execute @s[tag=up_pickaxe,scores={"镐等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_pickaxe