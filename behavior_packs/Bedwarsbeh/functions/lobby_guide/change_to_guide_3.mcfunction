function lobby_guide/delete_guide_2
setblock -182 200 -204 bedwars:player_red_wool
setblock -182 201 -203 bedwars:player_red_wool
setblock -182 201 -202 bedwars:player_red_wool
setblock -182 202 -201 bedwars:player_red_wool
setblock -182 202 -200 bedwars:player_red_wool

summon bedwars:npc_lobby_guide_3 -181.49 202.00 -202.44
summon bedwars:npc_lobby_guide_3_equip -181.95 203.61 -202.85

execute @e[type=armor_stand,name=main,scores={language=1}] ~~~ function lobby_guide/guide_board/cn/3
execute @e[type=armor_stand,name=main,scores={language=2}] ~~~ function lobby_guide/guide_board/en/3

tag @e[type=!player,x=-184,y=199,z=-204,dx=2,dy=5,dz=4] add in_guide