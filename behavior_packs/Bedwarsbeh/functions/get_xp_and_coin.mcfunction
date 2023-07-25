#refresh_xp_get
scoreboard players random @e[type=armor_stand,name=main] xp_get_game 10 20
scoreboard players set @e[type=armor_stand,name=main] xp_get_desbed 200
scoreboard players set @e[type=armor_stand,name=main] xp_get_kill 20
#refresh_coin_get
scoreboard players random @e[type=armor_stand,name=main] coin_get_game 5 10
scoreboard players set @e[type=armor_stand,name=main] coin_get_desbed 100
scoreboard players set @e[type=armor_stand,name=main] coin_get_kill 10
#检测获取经验
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.xp.game,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "等级经验" += @e[type=armor_stand,name=main] xp_get_game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.xp.game,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "当局经验" += @e[type=armor_stand,name=main] xp_get_game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[tag=get.xp.game,x=0,y=200,z=0,c=1] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_xp_time_played","with":{"rawtext":[{"score":{"name":"@s","objective":"xp_get_game"}}]}} ] }
execute @a[tag=get.xp.game,x=0,y=200,z=0,c=1] ~~~ tag @s remove get.xp.game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.xp.kill,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "等级经验" += @e[type=armor_stand,name=main] xp_get_kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.xp.kill,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "当局经验" += @e[type=armor_stand,name=main] xp_get_kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[tag=get.xp.kill,x=0,y=200,z=0,c=1] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_xp_kill","with":{"rawtext":[{"score":{"name":"@s","objective":"xp_get_kill"}}]}} ] }
execute @a[tag=get.xp.kill,x=0,y=200,z=0,c=1] ~~~ tag @s remove get.xp.kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.xp.desbed,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "等级经验" += @e[type=armor_stand,name=main] xp_get_desbed
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.xp.desbed,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "当局经验" += @e[type=armor_stand,name=main] xp_get_desbed
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[tag=get.xp.desbed,x=0,y=200,z=0,c=1] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_xp_destroy_bed","with":{"rawtext":[{"score":{"name":"@s","objective":"xp_get_desbed"}}]}} ] }
execute @a[tag=get.xp.desbed,x=0,y=200,z=0,c=1] ~~~ tag @s remove get.xp.desbed
#检测获取硬币
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.game,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.game,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "当局硬币" += @e[type=armor_stand,name=main] coin_get_game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.game,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[tag=get.coin.game,x=0,y=200,z=0,c=1] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_coin_time_played","with":{"rawtext":[{"score":{"name":"@s","objective":"coin_get_game"}}]}} ] }
execute @a[tag=get.coin.game,x=0,y=200,z=0,c=1] ~~~ tag @s remove get.coin.game
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.kill,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.kill,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "当局硬币" += @e[type=armor_stand,name=main] coin_get_kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.kill,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[tag=get.coin.kill,x=0,y=200,z=0,c=1] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_coin_kill","with":{"rawtext":[{"score":{"name":"@s","objective":"coin_get_kill"}}]}} ] }
execute @a[tag=get.coin.kill,x=0,y=200,z=0,c=1] ~~~ tag @s remove get.coin.kill
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.desbed,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_desbed
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.desbed,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "当局硬币" += @e[type=armor_stand,name=main] coin_get_desbed
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[tag=get.coin.desbed,x=0,y=200,z=0,c=1] ~~~ scoreboard players operation @s "硬币数" += @e[type=armor_stand,name=main] coin_get_desbed
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ tellraw @a[tag=get.coin.desbed,x=0,y=200,z=0,c=1] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_coin_destroy_bed","with":{"rawtext":[{"score":{"name":"@s","objective":"coin_get_desbed"}}]}} ] }
execute @a[tag=get.coin.desbed,x=0,y=200,z=0,c=1] ~~~ tag @s remove get.coin.desbed
