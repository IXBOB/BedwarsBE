tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_invisibility_potion" } ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -250
xp -250L @s
function shop_purchase/give_items/give_invisibility_potion