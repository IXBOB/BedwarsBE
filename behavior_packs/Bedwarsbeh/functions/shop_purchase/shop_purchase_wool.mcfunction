tag @s[scores={分队=1}] add give_red_wool
tag @s[scores={分队=2}] add give_blue_wool
tag @s[scores={分队=3}] add give_yellow_wool
tag @s[scores={分队=4}] add give_green_wool
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_wool"} ] }
playsound note.pling @s ~~~ 
scoreboard players add @s own_xp -8
xp -8L @s
execute @s[tag=give_red_wool] ~~~ function shop_purchase/give_items/give_red_wool
execute @s[tag=give_blue_wool] ~~~ function shop_purchase/give_items/give_blue_wool
execute @s[tag=give_yellow_wool] ~~~ function shop_purchase/give_items/give_yellow_wool
execute @s[tag=give_green_wool] ~~~ function shop_purchase/give_items/give_green_wool