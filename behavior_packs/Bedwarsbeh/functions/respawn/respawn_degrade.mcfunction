#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"剑等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_sword
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"剑等级"=2..},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ scoreboard players set @s "剑等级" 1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYour sword level has been reseted to 1" } ] }
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ tag @s remove degrade_sword
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"镐等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_pickaxe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"镐等级"=2..},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ scoreboard players add @s "镐等级" -1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYour pickaxe level has been downgraded and is now level " },{ "score" : { "name" : "@s" , "objective" : "镐等级"}}]}
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ tag @s remove degrade_pickaxe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"斧等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_axe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"斧等级"=2..},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ scoreboard players add @s "斧等级" -1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYour axe level has been downgraded and is now level " },{ "score" : { "name" : "@s" , "objective" : "斧等级"}}]}
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ tag @s remove degrade_axe
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"防具等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_armor
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4,"防具等级"=2..},tag=degrade,tag=degrade_armor,tag=run_respawn_command] ~~~ scoreboard players add @s "防具等级" -1
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_armor,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYour armor level has been downgraded and is now level " },{ "score" : { "name" : "@s" , "objective" : "防具等级"}}]}
#检测装备降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade_armor
#检测经验降级
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_xp
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ scoreboard players set @s will_get_XP 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ scoreboard players operation @s own_xp /= @e[type=armor_stand,name=main] constant_2
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ xp -99999L @s
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ scoreboard players operation @s xp_cache = @s own_xp
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ function api/recount_xp_by_scoreboard_xp_cache
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ { "text" : "§cYou lost half of your XP levels" }]}
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ tag @s remove degrade_xp
#tag-degrade
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade

#转到function_replaceitem
function respawn/respawn_replaceitem
















































































