tellraw @a { "rawtext" : [ { "text" : "§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }
tellraw @a { "rawtext" : [ { "text" : "§l                  BED WARS       \n               §r§fWinning team: §aGREEN\n" } ] }
execute @e[type=armor_stand,name=main] ~~~ tellraw @a { "rawtext" : [ { "text" : "Winner: §c" },{ "selector" :  "@a[scores={分队=1}]"},{ "text" : "\n\n§r§f                 Game time: §7" },{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n "} ] }
function gameEND_calculate_kill_rankings