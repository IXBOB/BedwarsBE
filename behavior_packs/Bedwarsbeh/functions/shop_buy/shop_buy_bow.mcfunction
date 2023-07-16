execute @s[l=199] ~~~ tellraw @s { "rawtext" : [ { "text" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=199] ~~~ playsound mob.endermen.portal @s
execute @s[lm=200] ~~~ tag @s add give_bow
execute @s[lm=200] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_bow"} ] }
execute @s[lm=200] ~~~ playsound note.pling @s ~~~
execute @s[lm=200] ~~~ scoreboard players add @s own_xp -200
execute @s[lm=200] ~~~ xp -200L @s