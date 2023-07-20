# 升级到木镐
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=0}] ~~~ give @s bedwars:wooden_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=0}] ~~~ scoreboard players set @s "镐等级" 1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=1}] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_now_wooden_pickaxe"} ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=1}] ~~~ tag @s remove up_pickaxe