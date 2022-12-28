execute @s[l=119] ~~~ tellraw @s { "rawtext" : [ { "text" : "§lShop >> §cYou don't have enough levels" } ] }
execute @s[l=119] ~~~ playsound mob.endermen.portal @s
execute @s[lm=120] ~~~ tag @s add get救援平台
execute @s[lm=120] ~~~ xp -120L @s 