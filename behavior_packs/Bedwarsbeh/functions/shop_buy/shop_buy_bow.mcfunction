 execute @s[l=199] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
 execute @s[l=199] ~~~ playsound mob.endermen.portal @s
 execute @s[lm=200] ~~~ tag @s add give_bow
 execute @s[lm=200] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou purchased §r§6Bow" } ] }
 execute @s[lm=200] ~~~ playsound note.pling @s ~~~
 execute @s[lm=200] ~~~ xp -200L @s