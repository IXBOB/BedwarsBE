#删除复制地图时多余的结构方块
setblock 0 185 48 air
setblock 0 185 -48 air
setblock 48 185 0 air
setblock -48 185 0 air
scoreboard players set @s "多已删除" 1