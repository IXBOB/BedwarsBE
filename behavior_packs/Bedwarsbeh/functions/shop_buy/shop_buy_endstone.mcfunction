execute @s[l=35] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=35] ~~~ playsound mob.endermen.portal @s
execute @s[lm=36] ~~~ tag @s add give_end_stone
execute @s[lm=36] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou purchased §r§6End stone x16" } ] }
execute @s[lm=36] ~~~ playsound note.pling @s ~~~
execute @s[lm=36] ~~~ xp -36L @s