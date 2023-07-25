scoreboard players set @e[type=armor_stand,name=main] kill.highest 0
scoreboard players reset * kill.cache
tag @e remove kill.FIRST
tag @e remove kill.SECOND
tag @e remove kill.THIRD
execute @a[scores={"分队"=1..4}] ~~~ scoreboard players operation @s kill.cache = @s 击杀数
scoreboard players operation @e[type=armor_stand,name=main] kill.highest > @a[scores={"分队"=1..4}] 击杀数
scoreboard players operation @a[scores={"分队"=1..4}] kill.cache -= @e[type=armor_stand,name=main] kill.highest
tag @a[scores={"分队"=1..4,kill.cache=0}] add kill.FIRST
execute @a[scores={"分队"=1..4},tag=kill.FIRST,c=1] ~~~ tellraw @a {"rawtext":[{"text":"     §e§l1st Killer §7"},{"selector":"@a[scores={分队=1..4},tag=kill.FIRST]"},{"text":" - "},{ "score" : { "name" : "@a[scores={分队=1..4},tag=kill.FIRST,c=1]" , "objective" : "击杀数"}}]}
execute @a[scores={"分队"=1..4},tag=!kill.FIRST] ~~~ scoreboard players operation @s kill.cache = @s 击杀数
scoreboard players set @e[name=main] kill.highest 0
scoreboard players operation @e[type=armor_stand,name=main] kill.highest > @a[scores={"分队"=1..4},tag=!kill.FIRST] 击杀数
scoreboard players operation @a[scores={"分队"=1..4},tag=!kill.FIRST] kill.cache -= @e[type=armor_stand,name=main] kill.highest
tag @a[scores={"分队"=1..4,kill.cache=0},tag=!kill.FIRST] add kill.SECOND
execute @a[scores={"分队"=1..4},tag=kill.SECOND,c=1] ~~~ tellraw @a {"rawtext":[{"text":"     §6§l2nd Killer §7"},{"selector":"@a[scores={分队=1..4},tag=kill.SECOND]"},{"text":" - "},{ "score" : { "name" : "@a[scores={分队=1..4},tag=kill.SECOND,c=1]" , "objective" : "击杀数"}}]}
execute @a[scores={"分队"=1..4},tag=!kill.FIRST,tag=!kill.SECOND] ~~~ scoreboard players operation @s kill.cache = @s 击杀数
scoreboard players set @e[name=main] kill.highest 0
scoreboard players operation @e[type=armor_stand,name=main] kill.highest > @a[scores={"分队"=1..4},tag=!kill.FIRST,tag=!kill.SECOND] 击杀数
scoreboard players operation @a[scores={"分队"=1..4},tag=!kill.FIRST,tag=!kill.SECOND] kill.cache -= @e[type=armor_stand,name=main] kill.highest
tag @a[scores={"分队"=1..4,kill.cache=0},tag=!kill.FIRST,tag=!kill.SECOND] add kill.THIRD
execute @a[scores={"分队"=1..4},tag=kill.THIRD,c=1] ~~~ tellraw @a {"rawtext":[{"text":"     §c§l3rd Killer §7"},{"selector":"@a[scores={分队=1..4},tag=kill.THIRD]"},{"text":" - "},{ "score" : { "name" : "@a[scores={分队=1..4},tag=kill.THIRD,c=1]" , "objective" : "击杀数"}}]}
tellraw @a { "rawtext" : [{"translate":"text.tellraw.ingameinfo.info_line"} ] }