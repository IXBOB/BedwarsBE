setblock -183 199 -200 end_stone
setblock -183 199 -201 end_stone

setblock -182 200 -203 end_stone
setblock -182 201 -202 end_stone
setblock -182 200 -202 planks
setblock -182 201 -201 planks
setblock -182 201 -200 planks
setblock -182 200 -201 bedwars:blue_bed_foot
setblock -182 200 -200 bedwars:blue_bed_head

summon bedwars:npc_lobby_guide_4 -182.91 200.00 -201.70
execute @e[type=bedwars:npc_lobby_guide_4] ~~~ tp @s ~~~ facing -182 200 -199

tag @e[type=!player,x=-184,y=199,z=-204,dx=2,dy=5,dz=4] add in_guide