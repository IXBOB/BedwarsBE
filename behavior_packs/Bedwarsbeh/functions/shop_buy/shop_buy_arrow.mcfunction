execute @s[l=29] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=29] ~~~ playsound mob.endermen.portal @s
execute @s[lm=30] ~~~ tag @s add give_arrow
execute @s[lm=30] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou purchased §r§6Arrow x8" } ] }
execute @s[lm=30] ~~~ playsound note.pling @s ~~~
execute @s[lm=30] ~~~ xp -30L @s