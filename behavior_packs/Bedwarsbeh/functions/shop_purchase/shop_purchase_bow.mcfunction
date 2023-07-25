tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_bow"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -200
xp -200L @s
function shop_purchase/give_items/give_bow