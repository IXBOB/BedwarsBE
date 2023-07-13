execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYou don't have enough levels" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[lm=100] ~~~ tag @s add give_jump_potion
execute @s[lm=100] ~~~ tellraw @s { "rawtext" : [ { "text" : "§aYou purchased §r§6Jump potion V(30s)" } ] }
execute @s[lm=100] ~~~ playsound note.pling @s ~~~
execute @s[lm=100] ~~~ scoreboard players add @s own_xp -100
execute @s[lm=100] ~~~ xp -100L @s