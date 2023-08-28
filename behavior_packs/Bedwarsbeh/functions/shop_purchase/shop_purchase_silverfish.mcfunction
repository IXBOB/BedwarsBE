tag @s[scores={分队=1}] add give_red_silverfish
tag @s[scores={分队=2}] add give_blue_silverfish
tag @s[scores={分队=3}] add give_yellow_silverfish
tag @s[scores={分队=4}] add give_green_silverfish
tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_silverfish"} ] }
playsound note.pling @s ~~~
scoreboard players add @s own_xp -50
xp -50L @s
execute @s[tag=give_red_silverfish] ~~~ function shop_purchase/give_items/give_red_silverfish
execute @s[tag=give_blue_silverfish] ~~~ function shop_purchase/give_items/give_blue_silverfish
execute @s[tag=give_yellow_silverfish] ~~~ function shop_purchase/give_items/give_yellow_silverfish
execute @s[tag=give_green_silverfish] ~~~ function shop_purchase/give_items/give_green_silverfish