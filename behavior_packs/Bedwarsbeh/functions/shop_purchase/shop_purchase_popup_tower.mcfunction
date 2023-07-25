tag @s[scores={分队=1}] add give_red_popup_tower
tag @s[scores={分队=2}] add give_blue_popup_tower
tag @s[scores={分队=3}] add give_yellow_popup_tower
tag @s[scores={分队=4}] add give_green_popup_tower
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_popup_tower"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -100
xp -100L @s
execute @s[tag=give_red_popup_tower] ~~~ function shop_purchase/give_items/give_red_popup_tower
execute @s[tag=give_blue_popup_tower] ~~~ function shop_purchase/give_items/give_blue_popup_tower
execute @s[tag=give_yellow_popup_tower] ~~~ function shop_purchase/give_items/give_yellow_popup_tower
execute @s[tag=give_green_popup_tower] ~~~ function shop_purchase/give_items/give_green_popup_tower