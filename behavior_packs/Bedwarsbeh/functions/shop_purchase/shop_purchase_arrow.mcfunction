execute @s[l=29] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=29] ~~~ playsound mob.endermen.portal @s
execute @s[lm=30] ~~~ tag @s add give_arrow
execute @s[lm=30] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_arrow"} ] }
execute @s[lm=30] ~~~ playsound note.pling @s ~~~
execute @s[lm=30] ~~~ scoreboard players add @s own_xp -30
execute @s[lm=30] ~~~ xp -30L @s
execute @s[tag=give_arrow] ~~~ function shop_purchase/give_items/give_arrow