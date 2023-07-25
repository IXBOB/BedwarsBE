tag @s[scores={分队=1}] add give_red_stained_glass
tag @s[scores={分队=2}] add give_blue_stained_glass
tag @s[scores={分队=3}] add give_yellow_stained_glass
tag @s[scores={分队=4}] add give_green_stained_glass
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_stained_glass"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -20
xp -20L @s
execute @s[tag=give_red_stained_glass] ~~~ function shop_purchase/give_items/give_red_stained_glass
execute @s[tag=give_blue_stained_glass] ~~~ function shop_purchase/give_items/give_blue_stained_glass
execute @s[tag=give_yellow_stained_glass] ~~~ function shop_purchase/give_items/give_yellow_stained_glass
execute @s[tag=give_green_stained_glass] ~~~ function shop_purchase/give_items/give_green_stained_glass