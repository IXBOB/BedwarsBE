event entity @e[type=bedwars:lobby_float_text,x=-204,y=201,z=-193,c=1,r=1] bedwars:remove_self
tickingarea add -204 201 -193 -204 201 -193
execute @e[type=armor_stand,name=main,scores={gameSTART=1,language=1}] ~~~ summon bedwars:lobby_float_text "§b|| 加入观战 ||" -204 201 -193
execute @e[type=armor_stand,name=main,scores={gameSTART=1,language=2}] ~~~ summon bedwars:lobby_float_text "§b|| Join the Spectate ||" -204 201 -193
tickingarea remove -204 201 -193