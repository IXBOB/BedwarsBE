execute @s[l=99] ~~~ tellraw @s { "rawtext" : [ { "text" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=99] ~~~ playsound mob.endermen.portal @s
execute @s[scores={"防具等级"=..3},lm=100] ~~~ tag @s add up_armor
execute @s[scores={"防具等级"=..3},lm=100] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_armor"} ] }
execute @s[scores={"防具等级"=..3},lm=100] ~~~ playsound note.pling @s ~~~
execute @s[scores={"防具等级"=..3},lm=100] ~~~ xp -100L @s