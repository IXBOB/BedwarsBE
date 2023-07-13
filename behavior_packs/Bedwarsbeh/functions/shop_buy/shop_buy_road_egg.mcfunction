execute @s[l=199] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYou don't have enough levels" } ] }
execute @s[l=199] ~~~ playsound mob.endermen.portal @s
execute @s[lm=200] ~~~ tag @s add give_road_egg
execute @s[lm=200] ~~~ tellraw @s { "rawtext" : [ { "text" : "§aYou purchased §r§6Bridge egg" } ] }
execute @s[lm=200] ~~~ playsound note.pling @s ~~~
execute @s[lm=200] ~~~ scoreboard players add @s own_xp -200
execute @s[lm=200] ~~~ xp -200L @s