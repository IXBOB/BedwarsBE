execute @s[l=7] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=7] ~~~ playsound mob.endermen.portal @s
execute @s[scores={分队=1},lm=8] ~~~ tag @s add give_red_wool
execute @s[scores={分队=2},lm=8] ~~~ tag @s add give_blue_wool
execute @s[scores={分队=3},lm=8] ~~~ tag @s add give_yellow_wool
execute @s[scores={分队=4},lm=8] ~~~ tag @s add give_green_wool
execute @s[lm=8] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §a§lYou purchased §r§6Wool x16" } ] }
execute @s[lm=8] ~~~ playsound note.pling @s ~~~ 
execute @s[lm=8] ~~~ scoreboard players add @s own_xp -8
execute @s[lm=8] ~~~ xp -8L @s