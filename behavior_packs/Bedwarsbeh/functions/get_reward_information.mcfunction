tellraw @a[scores={"分队"=1..2}] { "rawtext" : [ { "text" : "§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }
tellraw @a[scores={"分队"=1..2}] { "rawtext" : [ { "text" : "§l                Reward Summary       \n §r§7You earned \n" } ] }
execute @a[scores={"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§3   " },{ "score" : { "name" : "@s" , "objective" : "当局经验"}},{ "text" : " BED WARS experience" } ] }
execute @a[scores={"分队"=1..2}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§6   " },{ "score" : { "name" : "@s" , "objective" : "当局硬币"}},{ "text" : " BED WARS coins" } ] }
tellraw @a[scores={"分队"=1..2}] { "rawtext" : [ { "text" : "\n§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }