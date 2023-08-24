function lobby_guide/delete_guide_4
setblock -183 200 -202 bedwars:map_smooth_stone_slab_block
setblock -182 200 -202 bedwars:map_smooth_stone_slab_block
setblock -183 200 -203 bedwars:map_smooth_stone_slab_block
setblock -182 200 -203 bedwars:map_smooth_stone_slab_block
setblock -183 200 -204 bedwars:map_smooth_stone_slab_block
setblock -182 200 -204 bedwars:map_smooth_stone_slab_block

summon bedwars:npc_lobby_guide_5_enemy -182.42 200.50 -202.05
summon bedwars:npc_lobby_guide_5 -182.05 200 -200.93
summon bedwars:npc_lobby_guide_5_equip -181.95 200.50 -201.93

execute @e[type=armor_stand,name=main,scores={language=1}] ~~~ function lobby_guide/guide_board/cn/5
execute @e[type=armor_stand,name=main,scores={language=2}] ~~~ function lobby_guide/guide_board/en/5

tag @e[type=!player,x=-184,y=199,z=-204,dx=2,dy=5,dz=4] add in_guide



