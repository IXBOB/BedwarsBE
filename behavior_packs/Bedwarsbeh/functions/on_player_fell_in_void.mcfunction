#似乎json中的run_command运行完后才会执行引用的function中的内容，故此处又写了一遍stop_command
tag @s add stop_command
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tag @a[tag=stop_command] remove stop_command

tag @s add in_void_kill

execute @a[scores={分队=1..4}] ~~~ scoreboard players operation @s uid.cache2 = @s uid.cache
execute @s[tag=!stop_command] ~~~ scoreboard players operation @e[type=armor_stand,name=main] uid.cache2 = @s uid.cache2
execute @s[tag=!stop_command] ~~~ scoreboard players operation @a uid.cache2 -= @e[type=armor_stand,name=main] uid.cache2
execute @s[tag=!stop_command] ~~~ tag @s add cache
#若能找到最后一次击打自己的玩家则互相给予tag
execute @s[tag=!stop_command] ~~~ tag @a[tag=!cache,scores={uid.cache2=0}] add attacker_into_void
execute @s[tag=!stop_command] ~~~ execute @a[tag=attacker_into_void] ~~~ tag @a[tag=cache] add attacked_into_void
execute @s[tag=!stop_command] ~~~ tag @s remove cache

execute @s[tag=!stop_command] ~~~ execute @a[tag=attacker_into_void] ~~~ event entity @s bedwars:set_other_fatal_damage_uid
execute @s[tag=!stop_command,tag=in_void_kill,tag=!attacked_into_void] ~~~ tellraw @a { "rawtext" : [{ "translate": "%%5", "with": { "rawtext": [ { "selector": "@s[scores={分队=..1}]"}, { "selector": "@s[scores={分队=..2}]"}, { "selector": "@s[scores={分队=..3}]"}, { "selector": "@s[scores={分队=..4}]"}, { "text": "§c" }, { "text": "§b" }, { "text": "§e" }, { "text": "§a" } ] } },{ "selector" :  "@s" },{ "rawtext" : [{"translate":"text.tellraw.ingameinfo.kill_fell_into_the_void"} ] },{ "translate": "%%2", "with": { "rawtext": [ { "selector": "@a[tag=in_void_kill,scores={红床存活=0,分队=1}]" }, { "selector": "@a[tag=in_void_kill,scores={蓝床存活=0,分队=2}]" },{ "selector": "@a[tag=in_void_kill,scores={黄床存活=0,分队=3}]" },{ "selector": "@a[tag=in_void_kill,scores={绿床存活=0,分队=4}]" },{ "rawtext" : [{"translate":"text.tellraw.ingameinfo.final_kill"} ] } ] } } ]}

scoreboard players reset @a[tag=attacker_into_void] uid.cache2 
scoreboard players reset @a[tag=attacked_into_void] uid.cache2 
tag @s remove in_void_kill
tag @a remove attacked_into_void
tag @a remove attacker_into_void
tag @s remove stop_command