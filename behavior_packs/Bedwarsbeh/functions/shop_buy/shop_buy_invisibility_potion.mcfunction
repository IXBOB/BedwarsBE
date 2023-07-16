execute @s[l=249] ~~~ tellraw @s { "rawtext" : [ { "text" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=249] ~~~ playsound mob.endermen.portal @s
execute @s[lm=200] ~~~ tag @s add give_jump_potion
execute @s[lm=200] ~~~ tellraw @s { "rawtext" : [ { "text" : "§aYou purchased §r§6Invisibility Potion II(30s)" } ] }
execute @s[lm=200] ~~~ playsound note.pling @s ~~~
execute @s[lm=200] ~~~ scoreboard players add @s own_xp -2500
execute @s[lm=200] ~~~ xp -100L @s