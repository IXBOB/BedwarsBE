execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[lm=100,scores={分队=1}] ~~~ tag @s add give_red_fangyuta
execute @s[lm=100,scores={分队=2}] ~~~ tag @s add give_blue_fangyuta
execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou purchased §r§6Compact Pop-up Tower" } ] }
execute @s[lm=100] ~~~ playsound note.pling @s ~~~
execute @s[lm=100] ~~~ xp -100L @s