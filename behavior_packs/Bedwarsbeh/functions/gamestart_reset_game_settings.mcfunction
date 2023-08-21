#assign_team_id -> 0
scoreboard players set @s assign_team_id 0
#分队
scoreboard players set @e[type=player,tag=waiting] "分队" 0
#分队
function gamestart_set_team
#设置生存
gamemode 0 @a[tag=waiting,scores={"分队"=1..4}]
#清空玩家末影箱
execute @a[tag=waiting] ~~~ function clear_enderchest
#倒计时0title.times
title @a times 10 60 10
#倒计时0 title
titleraw @a[tag=waiting] title { "rawtext" : [{"translate":"text.title.ingameinfo.game_start"} ] }
#倒计时0 subtitle
titleraw @a[tag=waiting] subtitle { "rawtext" : [{"translate":"%%2","with":{"rawtext":[{"selector":"@e[type=armor_stand,name=main,scores={游戏模式=2}]"},{ "rawtext" : [{"translate":"text.subtitle.ingameinfo.start_mode_2"} ] },{ "rawtext" : [{"translate":"text.subtitle.ingameinfo.start_mode_1"} ] }]}} ] }
#设置respawning
scoreboard players set * respawning 0
#设置床存活
scoreboard players set @s "红床存活" 0
scoreboard players set @s "黄床存活" 0
scoreboard players set @s "蓝床存活" 0
scoreboard players set @s "绿床存活" 0
execute @e[type=player,scores={"分队"=1},tag=waiting,c=1] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "红床存活" 1
execute @e[type=player,scores={"分队"=2},tag=waiting,c=1] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "蓝床存活" 1
execute @e[type=player,scores={"分队"=3},tag=waiting,c=1] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "黄床存活" 1
execute @e[type=player,scores={"分队"=4},tag=waiting,c=1] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "绿床存活" 1
execute @s[scores={dev_mode=1}] ~~~ scoreboard players set @s "红床存活" 1
execute @s[scores={dev_mode=1}] ~~~ scoreboard players set @s "蓝床存活" 1
execute @s[scores={dev_mode=1}] ~~~ scoreboard players set @s "黄床存活" 1
execute @s[scores={dev_mode=1}] ~~~ scoreboard players set @s "绿床存活" 1
#gameSTART -> 1
scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=0}] gameSTART 1
#able_to_respawn -> 1
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] able_to_respawn 1
#重生时间 -> 100
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "重生时间" 100
#XP清空
xp -99999L @a
scoreboard players set @a own_xp 0
#xp_cache -> 0
scoreboard players set @a xp_cache 0
#隐身时间 -> 0
scoreboard players set @a invisible_time 0
#剑等级 -> 1
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "剑等级" 1
#镐等级 -> 0
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "镐等级" 0
#斧等级 -> 0
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "斧等级" 0
#护甲等级 -> 1
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "护甲等级" 1
#弓等级 -> 0
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "弓等级" 0
#kill经验球
kill @e[type=xp_orb]
#删除僵尸猪人
event entity @e[type=minecraft:zombie_pigman] bedwars:remove_self
#急迫等级 -> 0
scoreboard players set @s "红急迫等级" 0
scoreboard players set @s "蓝急迫等级" 0
scoreboard players set @s "黄急迫等级" 0
scoreboard players set @s "绿急迫等级" 0
#保护等级 -> 0
scoreboard players set @s "红保护等级" 0
scoreboard players set @s "蓝保护等级" 0
scoreboard players set @s "黄保护等级" 0
scoreboard players set @s "绿保护等级" 0
#锋利等级 -> 0
scoreboard players set @s "红锋利等级" 0
scoreboard players set @s "蓝锋利等级" 0
scoreboard players set @s "黄锋利等级" 0
scoreboard players set @s "绿锋利等级" 0
#普通模式锻炉等级 -> 0
scoreboard players set @s[scores={游戏模式=1}] "红锻炉等级" 0
scoreboard players set @s[scores={游戏模式=1}] "蓝锻炉等级" 0
scoreboard players set @s[scores={游戏模式=1}] "黄锻炉等级" 0
scoreboard players set @s[scores={游戏模式=1}] "绿锻炉等级" 0
#疾速模式锻炉等级 -> 4
scoreboard players set @s[scores={游戏模式=2}] "红锻炉等级" 4
scoreboard players set @s[scores={游戏模式=2}] "蓝锻炉等级" 4
scoreboard players set @s[scores={游戏模式=2}] "黄锻炉等级" 4
scoreboard players set @s[scores={游戏模式=2}] "绿锻炉等级" 4
function refresh_map/game/sign/red/forge
function refresh_map/game/sign/blue/forge
function refresh_map/game/sign/yellow/forge
function refresh_map/game/sign/green/forge
#陷阱个数 -> 0
scoreboard players set @s red_trap_sum 0
scoreboard players set @s blue_trap_sum 0
scoreboard players set @s yellow_trap_sum 0
scoreboard players set @s green_trap_sum 0
#各陷阱槽位ID -> 0
scoreboard players set @s red_trap_1_id 0
scoreboard players set @s blue_trap_1_id 0
scoreboard players set @s yellow_trap_1_id 0
scoreboard players set @s green_trap_1_id 0
scoreboard players set @s red_trap_2_id 0
scoreboard players set @s blue_trap_2_id 0
scoreboard players set @s yellow_trap_2_id 0
scoreboard players set @s green_trap_2_id 0
scoreboard players set @s red_trap_3_id 0
scoreboard players set @s blue_trap_3_id 0
scoreboard players set @s yellow_trap_3_id 0
scoreboard players set @s green_trap_3_id 0
#瞬间恢复
effect @a[scores={"分队"=1..4},tag=waiting] instant_health 2 255 true
#tag - degrade
tag @a[tag=waiting] remove degrade
#clear
clear @a[scores={"分队"=1..4},tag=waiting]
#set事件倒计时
execute @s[scores={"游戏模式"=1}] ~~~ scoreboard players set @s "事件倒计时" 120
execute @s[scores={"游戏模式"=2}] ~~~ scoreboard players set @s "事件倒计时" 900
#set-time.sec1 0
scoreboard players set @s game.time.sec.1 0
#set-time.sec2 0
scoreboard players set @s game.time.sec.2 0
#set-time.min1 0
scoreboard players set @s game.time.min.1 0
#set-time.min2 0
scoreboard players set @s game.time.min.2 0
#tag-degrade
tag @a[tag=waiting] remove degrade
#无敌时间 -> 60
scoreboard players set @a[scores={"分队"=1..4},tag=waiting] "无敌时间" 60
#tellraw获得无敌时间
execute @a[scores={"分队"=1..4},tag=waiting] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.get_invincibility"} ] }
#击杀数 -> 0
execute @a[scores={"分队"=1..4},tag=waiting] ~~~ scoreboard players set @s "击杀数" 0
#游戏开始tellraw游戏玩法
execute @s[scores={"游戏模式"=1}] ~~~ tellraw @a[tag=waiting] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line1"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line2"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line3"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line4"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line5"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line6"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line7"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line8"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_1_line9"} ] }
execute @s[scores={"游戏模式"=2}] ~~~ tellraw @a[tag=waiting] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line1"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line2"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line3"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line4"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line5"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line6"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line7"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line8"},{"text":"\n"},{"translate":"text.tellraw.ingameinfo.play_guide_mode_2_line9"} ] }
#疾速模式提示床将自毁
execute @s[scores={"游戏模式"=2}] ~~~ tellraw @a[tag=waiting] { "rawtext" : [{"translate":"text.tellraw.ingameinfo.event_rush_bed_self_destroyed_warn"} ] }
#给予木剑
replaceitem entity @a[tag=waiting,scores={"分队"=1..4}] slot.hotbar 0 bedwars:wooden_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#给予剪刀
replaceitem entity @a[tag=waiting,scores={"分队"=1..4}] slot.hotbar 1 bedwars:shears 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#replaceitem红队皮革护甲
replaceitem entity @a[tag=waiting,scores={"分队"=1}] slot.armor.head 0 bedwars:red_team_helmet 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=1}] slot.armor.chest 0 bedwars:red_team_chestplate 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=1}] slot.armor.legs 0 bedwars:red_team_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=1}] slot.armor.feet 0 bedwars:red_team_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem蓝队皮革护甲
replaceitem entity @a[tag=waiting,scores={"分队"=2}] slot.armor.head 0 bedwars:blue_team_helmet 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=2}] slot.armor.chest 0 bedwars:blue_team_chestplate 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=2}] slot.armor.legs 0 bedwars:blue_team_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=2}] slot.armor.feet 0 bedwars:blue_team_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem黄队皮革护甲
replaceitem entity @a[tag=waiting,scores={"分队"=3}] slot.armor.head 0 bedwars:yellow_team_helmet 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=3}] slot.armor.chest 0 bedwars:yellow_team_chestplate 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=3}] slot.armor.legs 0 bedwars:yellow_team_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=3}] slot.armor.feet 0 bedwars:yellow_team_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#replaceitem绿队皮革护甲
replaceitem entity @a[tag=waiting,scores={"分队"=4}] slot.armor.head 0 bedwars:green_team_helmet 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=4}] slot.armor.chest 0 bedwars:green_team_chestplate 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=4}] slot.armor.legs 0 bedwars:green_team_leggings 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
replaceitem entity @a[tag=waiting,scores={"分队"=4}] slot.armor.feet 0 bedwars:green_team_boots 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"},"minecraft:keep_on_death":{}}
#红队存在-> 1
execute @a[scores={"分队"=1},tag=waiting] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "红队存在" 1
#黄队存在-> 1
execute @a[scores={"分队"=2},tag=waiting] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "黄队存在" 1
#蓝队存在-> 1
execute @a[scores={"分队"=3},tag=waiting] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "蓝队存在" 1
#绿队存在-> 1
execute @a[scores={"分队"=4},tag=waiting] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "绿队存在" 1
#红队tag+team1
tag @a[scores={"分队"=1},tag=waiting] add team1
#蓝队tag+team2
tag @a[scores={"分队"=2},tag=waiting] add team2
#黄队tag+team3
tag @a[scores={"分队"=3},tag=waiting] add team3
#绿队tag+team4
tag @a[scores={"分队"=4},tag=waiting] add team4
#删除red_team_ace_tellrawed tag
tag @s remove red_team_ace_tellrawed
#删除blue_team_ace_tellrawed tag
tag @s remove blue_team_ace_tellrawed
#删除yellow_team_ace_tellrawed tag
tag @s remove yellow_team_ace_tellrawed
#删除green_team_ace_tellrawed tag
tag @s remove green_team_ace_tellrawed
#R_iron_count_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.red_iron] R_iron_count 0
#B_iron_count_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_iron] B_iron_count 0
#Y_iron_count_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron] Y_iron_count 0
#G_iron_count_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.green_iron] G_iron_count 0
#R_spawned_iron_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.red_iron] R_spawned_iron 0
#B_spawned_iron_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_iron] B_spawned_iron 0
#Y_spawned_iron_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron] Y_spawned_iron 0
#G_spawned_iron_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.green_iron] G_spawned_iron 0
#R_gold_count -> 0
scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_gold_count 0
#B_gold_count -> 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_gold_count 0
#Y_gold_count -> 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_gold_count 0
#G_gold_count -> 0
scoreboard players set @e[type=armor_stand,name=spawn.green_gold] G_gold_count 0
#R_spawned_gold -> 0
scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_spawned_gold 0
#B_spawned_gold -> 0
scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_spawned_gold 0
#Y_spawned_gold -> 0
scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_spawned_gold 0
#G_spawned_gold -> 0
scoreboard players set @e[type=armor_stand,name=spawn.green_gold] G_spawned_gold 0
#diamond_count_1 -> 0
#diamond_count_2 -> 0
#diamond_count_3 -> 0
#diamond_count_4 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] diamond_count_1 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] diamond_count_2 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] diamond_count_3 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] diamond_count_4 0
#spawned_diam_1 -> 0
#spawned_diam_2 -> 0
#spawned_diam_3 -> 0
#spawned_diam_4 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] spawned_diam_1 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] spawned_diam_2 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] spawned_diam_3 0
scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] spawned_diam_4 0
#emerald_count_1 -> 0
#emerald_count_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.emerald] emerald_count_1 0
scoreboard players set @e[type=armor_stand,name=spawn.emerald] emerald_count_2 0
#spawned_emer_1 -> 0
#spawned_emer_2 -> 0
scoreboard players set @e[type=armor_stand,name=spawn.emerald] spawned_emer_1 0
scoreboard players set @e[type=armor_stand,name=spawn.emerald] spawned_emer_2 0
#钻岛和中岛revovle实体自动检测绑定tag
execute @e[type=armor_stand,name=spawn.diamond_1] ~ 186 ~ tag @e[type=bedwars:diamond_point_revolve,c=1,r=20] add diamond_point_1
execute @e[type=armor_stand,name=spawn.diamond_2] ~ 186 ~ tag @e[type=bedwars:diamond_point_revolve,c=1,r=20] add diamond_point_2
execute @e[type=armor_stand,name=spawn.diamond_3] ~ 186 ~ tag @e[type=bedwars:diamond_point_revolve,c=1,r=20] add diamond_point_3
execute @e[type=armor_stand,name=spawn.diamond_4] ~ 186 ~ tag @e[type=bedwars:diamond_point_revolve,c=1,r=20] add diamond_point_4
execute @e[type=armor_stand,name=spawn.emerald] ~ 186 ~ tag @e[type=bedwars:emerald_point_revolve,c=1,r=20] add emerald_point_1
execute @e[type=armor_stand,name=spawn.emerald] ~ 186 ~ tag @e[type=bedwars:emerald_point_revolve,c=1,r=20,tag=!emerald_point_1] add emerald_point_2
#设置各队基地iron_invisible实体初始化状态 -> 0。因mojang bug，加载结构过大时，结构中的实体似乎无法在区块未加载时/tag add
scoreboard players set @s R_visi_enti_init 0
scoreboard players set @s B_visi_enti_init 0
scoreboard players set @s Y_visi_enti_init 0
scoreboard players set @s G_visi_enti_init 0
#删除附魔锋利tag
tag @a[tag=waiting] remove have_upgraded_sword_sharpness_i
#清空当局经验和当局金币
scoreboard players set @a[tag=waiting] "当局经验" 0
scoreboard players set @a[tag=waiting] "当局硬币" 0
#生成game_uid并赋予玩家
scoreboard players random @s game_uid 0 999999999
scoreboard players operation @a[scores={"分队"=1..4},tag=waiting] game_uid = @s game_uid
#出局观战 -> 0
scoreboard players set @a[tag=waiting] "出局观战" 0
#set显示
scoreboard players reset * "显示"
scoreboard players set text.scoreboard.ingameinfo.blank_2 "显示" 0
execute @e[type=armor_stand,name=main,scores={"游戏地图"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.map_1 "显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=2}] ~~~ scoreboard players set text.scoreboard.ingameinfo.map_2 "显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=3}] ~~~ scoreboard players set text.scoreboard.ingameinfo.map_3 "显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=4}] ~~~ scoreboard players set text.scoreboard.ingameinfo.map_4 "显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏模式"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1 "显示" -1
execute @e[type=armor_stand,name=main,scores={"游戏模式"=2}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_2 "显示" -1
function scoreboard_team_display/test_bed_exist_and_set
scoreboard players set text.scoreboard.ingameinfo.blank_1 "显示" -3
scoreboard players set text.scoreboard.ingameinfo.blank_4 "显示" -8
scoreboard players set text.scoreboard.ingameinfo.creator "显示" -9
scoreboard players set text.scoreboard.ingameinfo.website "显示" -10

#设置钻石生成点等级
scoreboard players set @e[type=armor_stand,name=main,scores={"游戏模式"=1}] "钻石等级" 1
scoreboard players set @e[type=armor_stand,name=main,scores={"游戏模式"=2}] "钻石等级" 3

#设置绿宝石生成点等级
scoreboard players set @e[type=armor_stand,name=main,scores={"游戏模式"=1}] "绿宝石等级" 1
scoreboard players set @e[type=armor_stand,name=main,scores={"游戏模式"=2}] "绿宝石等级" 3

#事件开始初始化
execute @s[scores={"显示事件"=0,"游戏模式"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_1 "显示" 120
execute @s[scores={"显示事件"=0,"游戏模式"=2}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_2_event_1 "显示" 900
scoreboard players set @s[scores={"显示事件"=0}] "显示事件" 1

#复制大厅告示牌
function refresh_map/lobby/start_game

#TP红
tp @a[scores={"分队"=1},tag=waiting] 0 186 53 facing 0 182 0
#TP蓝
tp @a[scores={"分队"=2},tag=waiting] 0 186 -53 facing 0 182 0
#TP黄
tp @a[scores={"分队"=3},tag=waiting] 53 186 0 facing 0 182 0
#TP绿
tp @a[scores={"分队"=4},tag=waiting] -53 186 0 facing 0 182 0

#remove tag waiting
tag @a remove waiting

#删除waiting_room
structure load bedwars:waiting_room_clear -16 232 -16 0_degrees none layer_by_layer 8

#starting -> 0
scoreboard players set @s starting 0
