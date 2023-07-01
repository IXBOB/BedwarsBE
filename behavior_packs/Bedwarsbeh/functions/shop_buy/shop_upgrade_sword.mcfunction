execute @s[l=49] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=49] ~~~ playsound mob.endermen.portal @s
execute @s[scores={"剑等级"=..3},lm=50] ~~~ tag @s add up_sword
execute @s[scores={"剑等级"=..3},lm=50] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou upgraded §r§6sword" } ] }
execute @s[scores={"剑等级"=..3},lm=50] ~~~ playsound note.pling @s ~~~
execute @s[scores={"剑等级"=..3},lm=50] ~~~ xp -50L @s