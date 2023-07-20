execute @s[l=79] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=79] ~~~ playsound mob.endermen.portal @s
execute @s[lm=80] ~~~ tag @s add give_fireball
execute @s[lm=80] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_fireball"} ] }
execute @s[lm=80] ~~~ playsound note.pling @s ~~~
execute @s[lm=80] ~~~ scoreboard players add @s own_xp -80
execute @s[lm=80] ~~~ xp -80L @s
execute @s[tag=give_fireball] ~~~ function shop_purchase/give_items/give_fireball