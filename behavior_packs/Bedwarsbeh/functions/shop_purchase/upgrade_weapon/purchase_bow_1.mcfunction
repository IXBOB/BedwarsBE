execute @e[type=armor_stand,scores={gameSTART=1,game_version=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=0}] ~~~ function shop_purchase/give_items/give_bow_1
execute @e[type=armor_stand,scores={gameSTART=1,game_version=2},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=0}] ~~~ function shop_purchase/give_items/old/give_bow_1

execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=0}] ~~~ scoreboard players set @s "弓等级" 1
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=1}] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_now_bow_1"} ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=1}] ~~~ tag @s remove up_bow
