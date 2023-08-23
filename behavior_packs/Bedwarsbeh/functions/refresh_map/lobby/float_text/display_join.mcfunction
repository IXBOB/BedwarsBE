event entity @e[type=bedwars:lobby_float_text,x=-204,y=201,z=-193,c=1,r=1] bedwars:remove_self
execute @e[type=armor_stand,name=main,scores={gameSTART=0,language=1},tag=reset_OK] ~~~ summon bedwars:lobby_float_text "§b|| 加入游戏 ||" -204 201 -193
execute @e[type=armor_stand,name=main,scores={gameSTART=0,language=2},tag=reset_OK] ~~~ summon bedwars:lobby_float_text "§b|| Join Game ||" -204 201 -193