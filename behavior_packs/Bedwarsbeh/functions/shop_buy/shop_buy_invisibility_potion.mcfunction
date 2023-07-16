execute @s[l=249] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=249] ~~~ playsound mob.endermen.portal @s
execute @s[lm=249] ~~~ tag @s add give_invisibility_potion
execute @s[lm=249] ~~~ tellraw @s { "rawtext" : [ { "text" : "§aYou purchased §r§6Invisibility Potion II(30s)" } ] }
execute @s[lm=249] ~~~ playsound note.pling @s ~~~
execute @s[lm=249] ~~~ scoreboard players add @s own_xp -200
execute @s[lm=249] ~~~ xp -250L @s