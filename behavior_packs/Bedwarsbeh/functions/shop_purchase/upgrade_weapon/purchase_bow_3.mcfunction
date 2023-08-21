execute @e[type=armor_stand,scores={gameSTART=1,game_version=1..2},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=2}] ~~~ function shop_purchase/clear_items/clear_bow_2
execute @e[type=armor_stand,scores={gameSTART=1,game_version=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=2}] ~~~ function shop_purchase/give_items/give_bow_3
execute @e[type=armor_stand,scores={gameSTART=1,game_version=2},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=2}] ~~~ function shop_purchase/give_items/old/give_bow_3

execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=2}] ~~~ scoreboard players set @s "弓等级" 3
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=3}] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.purchase_now_bow_3"} ] }
execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @e[type=player,tag=up_bow,scores={"弓等级"=3}] ~~~ tag @s remove up_bow
