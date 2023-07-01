execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[scores={"防具等级"=..3},lm=100] ~~~ tag @s add up_armor
execute @s[scores={"防具等级"=..3},lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou upgraded §r§6aromor" } ] }
execute @s[scores={"防具等级"=..3},lm=100] ~~~ playsound note.pling @s ~~~
execute @s[scores={"防具等级"=..3},lm=100] ~~~ xp -100L @s