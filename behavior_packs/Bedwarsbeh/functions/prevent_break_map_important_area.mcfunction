#地图1-防止资源点被破坏
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏地图"=1,function_tick=20}] ~~~ fill -1 183 57 1 183 55 wooden_slab 5
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏地图"=1,function_tick=20}] ~~~ fill -1 183 -57 1 183 -55 wooden_slab 5
#地图3-防止资源点被破坏
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏地图"=3,function_tick=20}] ~~~ fill 1 183 57 -1 183 55 prismarine 2
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏地图"=3,function_tick=20}] ~~~ fill -1 183 -57 1 183 -55 prismarine 2