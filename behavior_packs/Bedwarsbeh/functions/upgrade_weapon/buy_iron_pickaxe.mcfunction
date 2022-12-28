# 升级到铁镐
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=2}] ~~~ clear @s stone_pickaxe
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=2}] ~~~ give @s iron_pickaxe 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=2}] ~~~ scoreboard players set @s "镐等级" 3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§lShop >> §7§lYour pickaxe level is now 3 §f(iron)" } ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_pickaxe,scores={"镐等级"=3}] ~~~ tag @s remove up_pickaxe
