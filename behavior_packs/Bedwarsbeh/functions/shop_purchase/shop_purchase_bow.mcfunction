tag @s add up_bow
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_bow"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -200
xp -200L @s
function shop_purchase/give_items/give_bow
execute @s[tag=up_bow,scores={"弓等级"=0}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_bow_1
execute @s[tag=up_bow,scores={"弓等级"=1}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_bow_2
execute @s[tag=up_bow,scores={"弓等级"=2}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_bow_3
execute @s[tag=up_bow,scores={"弓等级"=3}] ~ ~ ~ function shop_purchase/upgrade_weapon/purchase_bow_4