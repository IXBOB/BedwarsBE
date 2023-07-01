execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[lm=100] ~~~ tag @s add give_xp_bottle
execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "§l§lShop >> §a§lYou purchased §r§6XP bottle(100L)" } ] }
execute @s[lm=100] ~~~ playsound note.pling @s ~~~
execute @s[lm=100] ~~~ xp -100L @s