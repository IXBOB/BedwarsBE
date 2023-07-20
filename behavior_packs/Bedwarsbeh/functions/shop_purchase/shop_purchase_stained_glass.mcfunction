execute @s[l=19] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=19] ~~~ playsound mob.endermen.portal @s
execute @s[scores={分队=1},lm=20] ~~~ tag @s add give_red_glass
execute @s[scores={分队=2},lm=20] ~~~ tag @s add give_blue_glass
execute @s[scores={分队=3},lm=20] ~~~ tag @s add give_yellow_glass
execute @s[scores={分队=4},lm=20] ~~~ tag @s add give_green_glass
execute @s[lm=20] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_glass"} ] }
execute @s[lm=20] ~~~ playsound note.pling @s ~~~
execute @s[lm=20] ~~~ scoreboard players add @s own_xp -20
execute @s[lm=20] ~~~ xp -20L @s
execute @s[tag=give_red_glass] ~~~ function shop_purchase/give_items/give_red_glass
execute @s[tag=give_blue_glass] ~~~ function shop_purchase/give_items/give_blue_glass
execute @s[tag=give_yellow_glass] ~~~ function shop_purchase/give_items/give_yellow_glass
execute @s[tag=give_green_glass] ~~~ function shop_purchase/give_items/give_green_glass