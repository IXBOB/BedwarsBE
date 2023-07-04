#分队
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=player] "分队" 0
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 1 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#倒计时0 TP红
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tp @a[scores={"分队"=1}] 0 186 53 facing 0 182 0
#倒计时0 TP蓝
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tp @a[scores={"分队"=2}] 0 186 -53 facing 0 182 0
#倒计时0title.times
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ title @a[scores={"分队"=1..4}] times 10 60 10
#倒计时0 title
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ title @a title §a§lGAME START
#倒计时0 subtitle
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ titleraw @a subtitle { "rawtext" : [{"translate":"%%2","with":{"rawtext":[{"selector":"@e[type=armor_stand,name=main,scores={游戏模式=2}]"},{"text":"§o§lRUSH MODE"},{"text":"§r§f§lNORMAL MODE"}]}} ] }
#设置respawning
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set * respawning 0
#红床存活 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "红床存活" 1
#蓝床存活 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "蓝床存活" 1
#黄床存活 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "黄床存活" 1
#绿床存活 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "绿床存活" 1
#gameSTART -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=0}] gameSTART 1
#重生时间 -> 100
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "重生时间" 100
#XP清空
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ xp -99999L @a
#剑等级 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "剑等级" 1
#镐等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "镐等级" 0
#斧等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "斧等级" 0
#防具等级 -> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "防具等级" 1
#kill经验球
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ kill @e[type=xp_orb]
#红陷阱等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "红陷阱等级" 0
#红保护等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "红保护等级" 0
#红锋利等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "红锋利等级" 0
#蓝陷阱等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "蓝陷阱等级" 0
#蓝保护等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "蓝保护等级" 0
#蓝锋利等级 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "蓝锋利等级" 0
#瞬间恢复
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ effect @a[scores={"分队"=1..4}] instant_health 2 255 true
#tag - degrade
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove degrade
#setdisplay游戏显示
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard objectives setdisplay sidebar "游戏显示"
#clear
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ clear @a[scores={"分队"=1..4}]
#set事件倒计时120
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s "事件倒计时" 120
#set-time.sec1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s game.time.sec.1 0
#set-time.sec2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s game.time.sec.2 0
#set-time.min1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s game.time.min.1 0
#set-time.min2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @s game.time.min.2 0
#tag-degrade
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove degrade
#无敌时间 -> 60
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a[scores={"分队"=1..4}] "无敌时间" 60
#tag-铁已遍历1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove 铁已遍历1
#tag-铁已遍历2
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove 铁已遍历2
#tag-铁已遍历3
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove 铁已遍历3
#tag-铁遍历1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove 铁遍历1
#tag-铁遍历2
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove 铁遍历2
#tag-铁遍历3
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove 铁遍历3
#tellraw获得无敌时间
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ execute @a[scores={"分队"=1..4}] ~~~ tellraw @s { "rawtext" : [ { "text" : "§f§lBED WARS >> §b§lYou gained 3 seconds of invincibility" } ] }
#击杀数 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ execute @a[scores={"分队"=1..4}] ~~~ scoreboard players set @s "击杀数" 0
#游戏开始tellraw游戏玩法
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tellraw @a { "rawtext" : [ { "text" : "§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀\n                  §fBED WARS \n \n§eProtect your bed and destory the enemy\nbed. Upgrade yourself and your team by\ncollecting Iron, Gold, Emerald and Diamond\nfrom generators to access powerful\nupgrades.\n \n§a§l▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀" } ] }
#给予木剑
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ replaceitem entity @a[scores={"分队"=1..4}] slot.hotbar 0 bedwars:wooden_sword 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#给予剪刀
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ replaceitem entity @a[scores={"分队"=1..4}] slot.hotbar 1 bedwars:shears 1 0 {"minecraft:item_lock":{"mode":"lock_in_inventory"},"minecraft:keep_on_death":{}}
#红队存在-> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ execute @a[scores={"分队"=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "红队存在" 1
#黄队存在-> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ execute @a[scores={"分队"=2}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "黄队存在" 1
#蓝队存在-> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ execute @a[scores={"分队"=3}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "蓝队存在" 1
#绿队存在-> 1
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ execute @a[scores={"分队"=4}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] "绿队存在" 1
#删除red_team_ace_tellrawed tag
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @s remove red_team_ace_tellrawed
#删除blue_team_ace_tellrawed tag
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @s remove blue_team_ace_tellrawed
#删除yellow_team_ace_tellrawed tag
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @s remove yellow_team_ace_tellrawed
#删除green_team_ace_tellrawed tag
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @s remove green_team_ace_tellrawed
#reset will_get_XP
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players reset * will_get_XP
#R_iron_count_1 -> 0
#R_iron_count_2 -> 0
#R_iron_count_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_1] R_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_2] R_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_3] R_iron_count_3 0
#B_iron_count_1 -> 0
#B_iron_count_2 -> 0
#B_iron_count_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_1] B_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_2] B_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_3] B_iron_count_3 0
#Y_iron_count_1 -> 0
#Y_iron_count_2 -> 0
#Y_iron_count_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron_1] Y_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron_2] Y_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron_3] Y_iron_count_3 0
#G_iron_count_1 -> 0
#G_iron_count_2 -> 0
#G_iron_count_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_iron_1] G_iron_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_iron_2] G_iron_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_iron_3] G_iron_count_3 0
#R_spawned_iron_1 -> 0
#R_spawned_iron_2 -> 0
#R_spawned_iron_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_1] R_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_2] R_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_iron_3] R_spawned_iron_3 0
#B_spawned_iron_1 -> 0
#B_spawned_iron_2 -> 0
#B_spawned_iron_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_1] B_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_2] B_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_iron_3] B_spawned_iron_3 0
#Y_spawned_iron_1 -> 0
#Y_spawned_iron_2 -> 0
#Y_spawned_iron_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron_1] Y_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron_2] Y_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_iron_3] Y_spawned_iron_3 0
#G_spawned_iron_1 -> 0
#G_spawned_iron_2 -> 0
#G_spawned_iron_3 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_iron_1] G_spawned_iron_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_iron_2] G_spawned_iron_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_iron_3] G_spawned_iron_3 0
#R_gold_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_gold_count 0
#B_gold_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_gold_count 0
#Y_gold_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_gold_count 0
#G_gold_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_gold] G_gold_count 0
#R_spawned_gold -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.red_gold] R_spawned_gold 0
#B_spawned_gold -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.blue_gold] B_spawned_gold 0
#Y_spawned_gold -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.yellow_gold] Y_spawned_gold 0
#G_spawned_gold -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.green_gold] G_spawned_gold 0
#diamond_count_1 -> 0
#diamond_count_2 -> 0
#diamond_count_3 -> 0
#diamond_count_4 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] diamond_count_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] diamond_count_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] diamond_count_3 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] diamond_count_4 0
#spawned_diam_1 -> 0
#spawned_diam_2 -> 0
#spawned_diam_3 -> 0
#spawned_diam_4 -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_1] spawned_diam_1 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_2] spawned_diam_2 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_3] spawned_diam_3 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.diamond_4] spawned_diam_4 0
#emerald_count -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.emerald] emerald_count 0
#spawned_emerald -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=spawn.emerald] spawned_emerald 0
#删除附魔锋利tag
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove have_upgraded_sword_sharpnessI
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove have_upgraded_sword_sharpnessII
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ tag @a remove have_upgraded_sword_sharpnessIII
#清空当局经验和当局金币
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a "当局经验" 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @a "当局硬币" 0
#生成game_uid并赋予玩家
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players random @s game_uid 0 999999999
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players operation @a[scores={"分队"=1..4}] game_uid = @s game_uid
#reset游戏显示
scoreboard players reset * "游戏显示"
#set游戏显示
scoreboard players set §r§r "游戏显示" 0
scoreboard players set "§7mtw.so/6nID9e" "游戏显示" -10
execute @e[type=armor_stand,name=main,scores={"游戏地图"=1}] ~~~ scoreboard players set "Map: §7Wooden Boat" "游戏显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=2}] ~~~ scoreboard players set "Map: §7desert" "游戏显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏地图"=3}] ~~~ scoreboard players set "Map: §7Deep Ocean" "游戏显示" -2
execute @e[type=armor_stand,name=main,scores={"游戏模式"=1}] ~~~ scoreboard players set "Mode: §7NORMAL" "游戏显示" -1
execute @e[type=armor_stand,name=main,scores={"游戏模式"=2}] ~~~ scoreboard players set "Mode: §7§oRUSH" "游戏显示" -1
scoreboard players set §r "游戏显示" -3
scoreboard players set §r§r§r§r "游戏显示" -8
scoreboard players set "§7Created by IXBOB" "游戏显示" -9
scoreboard players set "§7mtw.so/6nID9e" "游戏显示" -10
#删除复制地图时多余的结构方块
setblock 0 185 48 air
setblock 0 185 -48 air
setblock 48 185 0 air
setblock -48 185 0 air

#starting -> 0
execute @e[type=armor_stand,name=main,scores={starting=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={starting=1}] starting 0