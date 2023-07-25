tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_jump_boost_potion"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -100
xp -100L @s
function shop_purchase/give_items/give_jump_boost_potion