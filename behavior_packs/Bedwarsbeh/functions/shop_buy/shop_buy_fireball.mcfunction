execute @s[l=79] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYou don't have enough levels" } ] }
execute @s[l=79] ~~~ playsound mob.endermen.portal @s
execute @s[lm=80] ~~~ tag @s add give_fireball
execute @s[lm=80] ~~~ tellraw @s { "rawtext" : [ { "text" : "§aYou purchased §r§6Fireball" } ] }
execute @s[lm=80] ~~~ playsound note.pling @s ~~~
execute @s[lm=80] ~~~ scoreboard players add @s own_xp -80
execute @s[lm=80] ~~~ xp -80L @s