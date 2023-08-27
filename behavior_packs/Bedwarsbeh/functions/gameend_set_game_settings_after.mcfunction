#TP
tp @a -200 205 -200
#effect.clear
effect @a clear
#set menu_page 1
scoreboard players set @a menu_page 1
#gameSTART -> 0
scoreboard players set @e[type=armor_stand,name=main] gameSTART 0
#gamemode 2
gamemode 2 @a
#spawnpoint
spawnpoint @a -200 200 -200
#reset firework
scoreboard players reset * firework
#reset显示
scoreboard players reset * "显示"
#set显示
scoreboard players set text.scoreboard.gameendinfo.blank_1 "显示" 0
#set显示
scoreboard players set text.scoreboard.gameendinfo.creator "显示" -1
#set显示
scoreboard players set text.scoreboard.gameendinfo.thanks "显示" -2
#tag-degrade
tag @a remove degrade
#set分队 -> 0
scoreboard players set @a "分队" 0
#reset§c红队
scoreboard players reset * "§c红队"
#reset§b蓝队
scoreboard players reset * "§b蓝队"
#tag-HaGoBaPicka
tag @a remove have_got_base_pickaxe
#tag-HaGoBaAxe
tag @a remove have_got_base_axe
#tag-HaGoBaSword
tag @a remove have_got_base_sword
#tag-reset_OK
tag @e[type=armor_stand,name=main] remove reset_OK
#瞬间恢复
effect @a instant_health 2 255 true
#reseting -> 0
scoreboard players set @e[type=armor_stand,name=main] reseting 0
#starting -> 0
scoreboard players set @e[type=armor_stand,name=main] starting 0
#删除经验
xp -99999L @a
#tag - have救援平台
tag @a remove "have救援平台"
#reset-time.sec1
scoreboard players reset * game.time.sec.1
#reset-time.sec2
scoreboard players reset * game.time.sec.2
#reset-time.min1
scoreboard players reset * game.time.min.1
#reset-time.min2
scoreboard players reset * game.time.min.2
#玩家头顶显示等级
scoreboard objectives setdisplay belowname "等级"
#设置已重置计分板为0
scoreboard players set @e[type=armor_stand,name=main] "基已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "钻已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "中已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "保已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "多已删除" 0
scoreboard players set @e[type=armor_stand,name=main] "商已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "牌已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "实已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "箱已重置" 0
scoreboard players set @e[type=armor_stand,name=main] "等已重置" 0
#重置隐身状态
execute @a ~~~ function invisibility_end
#清空玩家末影箱
execute @a ~~~ function clear_enderchest
#删除资源点旋转的实体
execute @e[type=armor_stand,name=spawn.diamond_1] ~ 186 ~ execute @e[type=bedwars:diamond_point_revolve,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.diamond_2] ~ 186 ~ execute @e[type=bedwars:diamond_point_revolve,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.diamond_3] ~ 186 ~ execute @e[type=bedwars:diamond_point_revolve,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.diamond_4] ~ 186 ~ execute @e[type=bedwars:diamond_point_revolve,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.emerald] ~ 186 ~ execute @e[type=bedwars:emerald_point_revolve,r=90] ~~~ event entity @s bedwars:remove_self
#删除基地资源点隐藏的实体
execute @e[type=armor_stand,name=spawn.red_iron] ~ 186 ~ execute @e[type=bedwars:iron_point_red_invisible,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.blue_iron] ~ 186 ~ execute @e[type=bedwars:iron_point_blue_invisible,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.yellow_iron] ~ 186 ~ execute @e[type=bedwars:iron_point_yellow_invisible,r=90] ~~~ event entity @s bedwars:remove_self
execute @e[type=armor_stand,name=spawn.green_iron] ~ 186 ~ execute @e[type=bedwars:iron_point_green_invisible,r=90] ~~~ event entity @s bedwars:remove_self
#删除队伍实体
event entity @e[type=bedwars:base_entity_red] bedwars:remove_self
event entity @e[type=bedwars:base_entity_blue] bedwars:remove_self
event entity @e[type=bedwars:base_entity_yellow] bedwars:remove_self
event entity @e[type=bedwars:base_entity_green] bedwars:remove_self
#删除dropped_item
event entity @e[type=bedwars:dropped_iron_ingot,tag=!in_guide] bedwars:remove_self
event entity @e[type=bedwars:dropped_gold_ingot,tag=!in_guide] bedwars:remove_self
event entity @e[type=bedwars:dropped_diamond,tag=!in_guide] bedwars:remove_self
event entity @e[type=bedwars:dropped_emerald,tag=!in_guide] bedwars:remove_self