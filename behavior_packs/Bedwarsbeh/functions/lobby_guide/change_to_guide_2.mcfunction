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
summon bedwars:npc_lobby_guide_2_equip -183.05 201.55 -201.00

tag @e[type=!player,x=-184,y=199,z=-204,dx=2,dy=5,dz=4] add in_guide