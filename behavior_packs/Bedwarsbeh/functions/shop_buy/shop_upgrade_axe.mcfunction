execute @s[l=49] ~~~ tellraw @s { "rawtext" : [ { "translate" : "text.tellraw.ingameinfo.purchase_item_denied" } ] }
execute @s[l=49] ~~~ playsound mob.endermen.portal @s
execute @s[scores={"斧等级"=..3},lm=50] ~~~ tag @s add up_axe
execute @s[scores={"斧等级"=..3},lm=50] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_upgrade_axe"} ] }
execute @s[scores={"斧等级"=..3},lm=50] ~~~ playsound note.pling @s ~~~
execute @s[scores={"斧等级"=..3},lm=50] ~~~ xp -50L @s