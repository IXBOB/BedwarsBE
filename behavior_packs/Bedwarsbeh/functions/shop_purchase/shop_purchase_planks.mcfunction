tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_planks"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -36
xp -36L @s
function shop_purchase/give_items/give_planks