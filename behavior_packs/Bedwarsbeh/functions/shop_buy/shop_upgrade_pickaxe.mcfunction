execute @s[l=49] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYou don't have enough levels" } ] }
execute @s[l=49] ~~~ playsound mob.endermen.portal @s
execute @s[scores={"镐等级"=..3},lm=50] ~~~ tag @s add up_pickaxe
execute @s[scores={"镐等级"=..3},lm=50] ~~~ tellraw @s { "rawtext" : [ { "text" : "§aYou upgraded §r§6pickaxe" } ] }
execute @s[scores={"镐等级"=..3},lm=50] ~~~ playsound note.pling @s ~~~
execute @s[scores={"镐等级"=..3},lm=50] ~~~ xp -50L @s