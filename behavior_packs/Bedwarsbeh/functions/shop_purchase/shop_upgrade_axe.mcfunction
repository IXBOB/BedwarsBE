tag @s add up_axe
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_axe"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -50
xp -50L @s
execute @s[tag=up_axe,scores={"斧等级"=0}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_wooden_axe
execute @s[tag=up_axe,scores={"斧等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_stone_axe
execute @s[tag=up_axe,scores={"斧等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_axe
execute @s[tag=up_axe,scores={"斧等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_axe