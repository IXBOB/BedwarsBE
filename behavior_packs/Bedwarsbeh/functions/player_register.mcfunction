scoreboard players set @s "总击杀数" 0
scoreboard players set @s "胜场数" 0
scoreboard players set @s "等级" 0
scoreboard players set @s "等级经验" 0
scoreboard players set @s "硬币数" 0
scoreboard players set @s "总游戏数" 0
scoreboard players set @s "总死亡数" 0
scoreboard players set @s "总拆床数" 0
scoreboard players set @s "当局经验" 0
scoreboard players set @s "当局硬币" 0
scoreboard players set @s "分队" 0
scoreboard players set @s "存活" 0
scoreboard players set @s "出局观战" 0
scoreboard players set @s "抬头返回time" 0
scoreboard players set @s own_xp 0
scoreboard players set @s xp_cache 0
scoreboard players set @s still_need_xp 0
scoreboard players set @s health 20
scoreboard players set @s able_to_respawn 0
function inventory_menu/change_to_menu/change_to_menu1
scoreboard players set @s select_particle 0
scoreboard players set @s respawning 0
scoreboard players random @s uid 0 999999999
scoreboard players set @s buying_particle 0
scoreboard players set @s invisible_time 0

gamemode 2 @s

#init own_paricle
scoreboard players set @s own_particle_3 0
scoreboard players set @s own_particle_4 0
scoreboard players set @s own_particle_5 0
scoreboard players set @s own_particle_99 0


tag @s add registered
