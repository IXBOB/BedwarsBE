function lobby_guide/delete_guide_3
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
summon bedwars:npc_lobby_guide_4_equip -183.25 200.90 -201.00

execute @e[type=armor_stand,name=main,scores={language=1}] ~~~ function lobby_guide/guide_board/cn/4
execute @e[type=armor_stand,name=main,scores={language=2}] ~~~ function lobby_guide/guide_board/en/4

tag @e[type=!player,x=-184,y=199,z=-204,dx=2,dy=5,dz=4] add in_guide