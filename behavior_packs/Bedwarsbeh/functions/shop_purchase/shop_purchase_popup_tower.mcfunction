execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[lm=100,scores={分队=1}] ~~~ tag @s add give_red_popup_tower
execute @s[lm=100,scores={分队=2}] ~~~ tag @s add give_blue_popup_tower
execute @s[lm=100,scores={分队=3}] ~~~ tag @s add give_yellow_popup_tower
execute @s[lm=100,scores={分队=4}] ~~~ tag @s add give_green_popup_tower
execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_popup_tower"} ] }
execute @s[lm=100] ~~~ playsound note.pling @s ~~~
execute @s[lm=100] ~~~ scoreboard players add @s own_xp -100
execute @s[lm=100] ~~~ xp -100L @s
execute @s[tag=give_red_popup_tower] ~~~ function shop_purchase/give_items/give_red_popup_tower
execute @s[tag=give_blue_popup_tower] ~~~ function shop_purchase/give_items/give_blue_popup_tower
execute @s[tag=give_yellow_popup_tower] ~~~ function shop_purchase/give_items/give_yellow_popup_tower
execute @s[tag=give_green_popup_tower] ~~~ function shop_purchase/give_items/give_green_popup_tower