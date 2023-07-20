execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[lm=100] ~~~ tag @s add give_xp_bottle
execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_xp_bottle"} ] }
execute @s[lm=100] ~~~ playsound note.pling @s ~~~
execute @s[lm=100] ~~~ scoreboard players add @s own_xp -100
execute @s[lm=100] ~~~ xp -100L @s
execute @s[tag=give_xp_bottle] ~~~ function shop_purchase/give_items/give_xp_bottle