#检测玩家game_uid和盔甲架game_uid是否相同(即检测玩家是否中途退出再加入了下一局)
execute @a[tag=!from_lobby_spectator,x=-63,y=80,z=-63,dx=127,dy=200,dz=127] ~~~ scoreboard players operation @s game_uid.cache = @s game_uid
execute @a[tag=!from_lobby_spectator,x=-63,y=80,z=-63,dx=127,dy=200,dz=127] ~~~ scoreboard players operation @s game_uid.cache -= @e[type=armor_stand,name=main] game_uid
execute @a[tag=!from_lobby_spectator,x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={game_uid.cache=!0}] ~~~ tag @s add do_not_in_this_game
execute @a[tag=!from_lobby_spectator,x=-63,y=80,z=-63,dx=127,dy=200,dz=127,tag=do_not_in_this_game] ~~~ function test_game_uid/do_not_in_this_game_kick