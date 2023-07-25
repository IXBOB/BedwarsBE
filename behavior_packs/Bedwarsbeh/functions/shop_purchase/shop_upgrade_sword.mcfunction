tag @s add up_sword
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_sword"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -50
xp -50L @s
execute @s[tag=up_sword,scores={"剑等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_stone_sword
execute @s[tag=up_sword,scores={"剑等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_iron_sword
execute @s[tag=up_sword,scores={"剑等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_diamond_sword