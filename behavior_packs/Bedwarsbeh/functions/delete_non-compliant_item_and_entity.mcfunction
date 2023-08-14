#删除背包内的铁锭，金锭，钻石，绿宝石
clear @a iron_ingot
clear @a gold_ingot
clear @a diamond
clear @a emerald
#删除背包内的木箱子
clear @a chest
#删除出界的箭
execute @e[type=arrow] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#火焰弹出界删除
execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#删除disabled_content
kill @e[type=item,name=disabled_content]
#删除出界的末影珍珠
execute @e[type=ender_pearl] ~~~ detect ~ 0 ~ deny 0 kill @s
kill @e[type=ender_pearl,x=-63,y=90,z=-63,dx=127,dy=40,dz=127]
#删除屏障上的僵尸猪人
execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 event entity @s bedwars:remove_self
#删除屏障上的掉落物
execute @e[type=item] ~~~ detect ~ ~-1 ~ barrier 0 kill @s