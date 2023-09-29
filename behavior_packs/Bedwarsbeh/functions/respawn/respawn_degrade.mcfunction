#剑降级
execute @s[scores={able_to_respawn=1,"分队"=1..4,"剑等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_sword
execute @s[scores={able_to_respawn=1,"分队"=1..4,"剑等级"=2..},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ scoreboard players set @s "剑等级" 1
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.respawn_sword_degrade"} ] }
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_sword,tag=run_respawn_command] ~~~ tag @s remove degrade_sword
#镐降级
execute @s[scores={able_to_respawn=1,"分队"=1..4,"镐等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_pickaxe
execute @s[scores={able_to_respawn=1,"分队"=1..4,"镐等级"=2..},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ scoreboard players add @s "镐等级" -1
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.respawn_pickaxe_degrade"},{ "score" : { "name" : "@s" , "objective" : "镐等级"}}]}
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_pickaxe,tag=run_respawn_command] ~~~ tag @s remove degrade_pickaxe
#斧降级
execute @s[scores={able_to_respawn=1,"分队"=1..4,"斧等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_axe
execute @s[scores={able_to_respawn=1,"分队"=1..4,"斧等级"=2..},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ scoreboard players add @s "斧等级" -1
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.respawn_axe_degrade"},{ "score" : { "name" : "@s" , "objective" : "斧等级"}}]}
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_axe,tag=run_respawn_command] ~~~ tag @s remove degrade_axe
#护甲降级
execute @s[scores={able_to_respawn=1,"分队"=1..4,"护甲等级"=2..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_armor
execute @s[scores={able_to_respawn=1,"分队"=1..4,"护甲等级"=2..},tag=degrade,tag=degrade_armor,tag=run_respawn_command] ~~~ scoreboard players add @s "护甲等级" -1
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_armor,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ {"translate":"text.tellraw.ingameinfo.respawn_armor_degrade"},{ "score" : { "name" : "@s" , "objective" : "护甲等级"}}]}
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade_armor
#弓降级
execute @s[scores={able_to_respawn=1,"分队"=1..4,"弓等级"=1..},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_bow
execute @s[scores={able_to_respawn=1,"分队"=1..4,"弓等级"=1..},tag=degrade,tag=degrade_bow,tag=run_respawn_command] ~~~ scoreboard players add @s "弓等级" 0
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_bow,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [ {"translate":"text.tellraw.ingameinfo.respawn_bow_degrade"}]}
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade_bow
#检测经验降级
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s add degrade_xp
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ scoreboard players operation @s own_xp /= @e[type=armor_stand,name=main] constant_2
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ xp -99999L @s
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ function utils/recount_xp_by_scoreboard_own_xp
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.respawn_lost_half_xp_levels"} ] }
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=degrade_xp,tag=run_respawn_command] ~~~ tag @s remove degrade_xp
#tag-degrade
execute @s[scores={able_to_respawn=1,"分队"=1..4},tag=degrade,tag=run_respawn_command] ~~~ tag @s remove degrade

#转到function_replaceitem
execute @e[type=armor_stand,name=main,scores={game_version=1}] ~~~ function respawn/respawn_replaceitem
execute @e[type=armor_stand,name=main,scores={game_version=2}] ~~~ function respawn/respawn_replaceitem_old2