function lobby_guide/delete_guide_1
setblock -182 200 -200 bed
setblock -182 201 -200 end_stone
setblock -182 201 -201 end_stone
setblock -183 201 -200 end_stone
setblock -183 200 -202 end_stone
setblock -182 202 -200 bedwars:player_red_wool
setblock -182 202 -201 bedwars:player_red_wool
setblock -182 201 -202 bedwars:player_red_wool
setblock -182 200 -203 bedwars:player_red_wool
setblock -183 200 -203 bedwars:player_red_wool

summon bedwars:npc_lobby_guide_2 -182.49 201.00 -201.85
summon bedwars:npc_lobby_guide_2_equip -182.75 201.55 -201.52

execute @e[type=armor_stand,name=main,scores={language=1}] ~~~ function lobby_guide/guide_board/cn/2
execute @e[type=armor_stand,name=main,scores={language=2}] ~~~ function lobby_guide/guide_board/en/2

tag @e[type=!player,x=-184,y=199,z=-204,dx=2,dy=5,dz=4] add in_guide