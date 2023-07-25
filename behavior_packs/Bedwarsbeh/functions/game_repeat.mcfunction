#gamerule相关================
#游戏没开始关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ gamerule falldamage false
#游戏开始打开掉落伤害
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ gamerule falldamage true
#游戏结算关闭掉落伤害
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ gamerule falldamage false
#pvp false
execute @e[type=armor_stand,name=main,scores={gameSTART=!1}] ~~~ gamerule pvp false
#pvp true
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ gamerule pvp true
#设置游戏规则
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ function set_gamerule
#gamerule相关结束================

#删除盔甲架主手物品
replaceitem entity @e[type=armor_stand] slot.weapon.mainhand 0 air

#删除出界的箭
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ execute @e[type=arrow] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#删除出界的末影珍珠
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=ender_pearl] ~~~ detect ~ 0 ~ deny 0 kill @s
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @e[type=ender_pearl,x=-63,y=90,z=-63,dx=127,dy=83,dz=127] ~~~ kill @s

#大厅跳到结构空位TP出生点
execute @a[x=-200,y=180,z=-200,r=50] ~~~ detect ~ ~ ~ structure_void 0 tp @s -200 200 -200

#检测大厅有游戏内玩家移出游戏
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[scores={in_lobby=1,"分队"=1..4,"存活"=1}] ~~~ tag @s add unexpected_return_to_lobby
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ execute @a[scores={in_lobby=1,"分队"=1..4,"存活"=1}] ~~~ function back_to_lobby_unexpectedly_kick

#所有玩家饱和
effect @a saturation 2 255 true
#开始游戏后大厅玩家虚弱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ effect @a[x=-218,y=193,z=-218,r=50] weakness 2 255 true
#开始游戏后大厅玩家抗性提升
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ effect @a[x=-218,y=193,z=-218,r=50] resistance 2 255 true

#游戏开始后还原被破坏的红队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 0 185 58 air 0 structure load bedwars:red_team_chest 0 185 58
#游戏开始后还原被破坏的蓝队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 0 185 -58 air 0 structure load bedwars:blue_team_chest 0 185 -58
#游戏开始后还原被破坏的黄队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect 58 185 0 air 0 structure load bedwars:yellow_team_chest 58 185 0
#游戏开始后还原被破坏的绿队伍箱
execute @e[type=armor_stand,scores={gameSTART=1..2}] ~~~ detect -58 185 0 air 0 structure load bedwars:green_team_chest -58 185 0

#<红> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "红床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=!1},x=0,y=185,z=46,r=7] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红床有敌" 1
#<蓝> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "蓝床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=!2},x=0,y=185,z=-46,r=7] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝床有敌" 1
#<黄> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "黄床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=!3},x=46,y=185,z=0,r=7] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "黄床有敌" 1
#<绿> 检测有敌人可以破坏床
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players set @s "绿床有敌" 0
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @e[type=player,scores={"分队"=!4},x=-46,y=185,z=0,r=7] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿床有敌" 1

#gameSTART为0时执行命令
execute @e[type=armor_stand,scores={gameSTART=0}] ~~~ function gameSTART0_functions
#gameSTART为2时执行命令
execute @e[type=armor_stand,scores={gameSTART=2}] ~~~ function gameSTART2_functions
#给掉入虚空的玩家添加kill tag
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=88,z=-63,dx=126,dy=4,dz=126,scores={"分队"=1..4}] ~~~ detect ~ ~ ~ structure_void 0 tag @s add in_void_kill
#删除掉入虚空的玩家
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ execute @a[x=-63,y=88,z=-63,dx=126,dy=4,dz=126,scores={"分队"=1..4}] ~~~ detect ~ ~ ~ structure_void 0 kill @s

#初始化新玩家
execute @a[tag=!registered] ~~~ function player_register

#运行gameSTART1_functions
execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ function gameSTART1_functions

#复制gameSTART给玩家
scoreboard players operation @a gameSTART = @e[type=armor_stand,name=main] gameSTART

#检测有人正在重生执行相关指令
execute @e[type=player,scores={respawning=1},x=0,y=200,z=0,c=1] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ function respawn/respawn_main
#此处一部分指令在gameSTART0_functions，为性能考虑
#复制告示牌游戏已开始
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ structure load bedwars:lobby_click_watch_sign -200 200 -204
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20}] ~~~ setblock -200 201 -205 polished_blackstone_button 1
#检测游戏开始时按钮被按下并重置按钮(观战)
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 gamemode spectator @e[type=player,x=-200,y=201,z=-205,r=3,c=1]
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 scoreboard players set @e[type=player,x=-200,y=201,z=-205,r=3,c=1] "存活" 0
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 tag @e[type=player,x=-200,y=201,z=-205,r=3,c=1] add from_lobby_spectator
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 scoreboard players set @e[type=player,x=-200,y=201,z=-205,r=3,c=1] "出局观战" 1
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 tp @e[type=player,x=-200,y=201,z=-205,r=3,c=1] 0 206 0
execute @e[type=armor_stand,scores={gameSTART=1}] ~~~ detect -200 201 -205 polished_blackstone_button 9 setblock -200 201 -205 polished_blackstone_button 1
#重置结束后后复制地图选择告示牌
#此处一部分指令在gameSTART0_functions，为性能考虑
#不可选择部分
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=1,function_tick=20}] ~~~ structure load bedwars:lobby_map1_lock_sign -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=2,function_tick=20}] ~~~ structure load bedwars:lobby_map2_lock_sign -203 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏地图"=3,function_tick=20}] ~~~ structure load bedwars:lobby_map3_lock_sign -203 200 -197
#重置结束后后复制游戏模式告示牌
#不可选择部分
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,scores={reseting=1,"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,scores={reseting=1,"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,scores={starting=1,"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,scores={starting=1,"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -202 200 -197
execute @e[type=armor_stand,name=main,tag=reset_OK,scores={"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -202 200 -197
#检测人数开始游戏相关================
#当 即将设置的最少开始玩家数 等于 已设置的最少开始玩家数 时tellraw管理员
#此处一部分指令在gameSTART0_functions，为性能考虑
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.2] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.3] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.4] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.5] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.6] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.7] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ execute @a[tag=op,tag=set.start.players.8] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
#非gameSTART=0时删除玩家的tag
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.2
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.3
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.4
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.5
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.6
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.7
execute @e[type=armor_stand,name=main,scores={gameSTART=!0}] ~~~ tag @a remove set.start.players.8
#初始化重复检测大厅人数
scoreboard players reset * "大厅人数"
#检测人数开始游戏相关结束================
#玩家tag指令相关================
#玩家被夺去tag=op时提示
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ function on_get_op
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ function on_take_away_op
#玩家tag指令相关结束================
#游戏区域tag+degrade
execute @a[tag=!degrade] ~~~ execute @e[type=armor_stand,scores={gameSTART=1},name=main] ~~~ execute @a[scores={"分队"=1..4},x=-63,y=171,z=-63,dx=126,dy=33,dz=126,m=0] ~~~ tag @s add degrade

#游戏开始时自动获取经验和硬币
execute @e[type=armor_stand,scores={gameSTART=1,function_tick=20,fc_tick_cycle=10}] ~~~ function add_xp_and_coin_game
#升级
execute @a[scores={"等级经验"=1000..}] ~~~ function player_level_up
#重复复制红队商店
execute @e[type=armor_stand,name=main,scores={gameSTART=1,function_tick=20}] ~~~ function ingame_structure_loop_replace
#疾速模式速度I和急迫I
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏模式"=2}] ~~~ effect @a[scores={"分队"=1..4,"存活"=1}] speed 1 0 true
execute @e[type=armor_stand,name=main,scores={gameSTART=1..2,"游戏模式"=2}] ~~~ effect @a[scores={"分队"=1..4,"存活"=1}] haste 1 0 true
#大厅滚动字体
scoreboard players add @e[type=armor_stand,name=main] lobby_text_time -1
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-1}] ~~~ tp @e[type=armor_stand,tag=text1] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-41}] ~~~ tp @e[type=armor_stand,tag=text2] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-81}] ~~~ tp @e[type=armor_stand,tag=text3] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-121}] ~~~ tp @e[type=armor_stand,tag=text4] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-161}] ~~~ tp @e[type=armor_stand,tag=text5] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-201}] ~~~ tp @e[type=armor_stand,tag=text6] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-241}] ~~~ tp @e[type=armor_stand,tag=text7] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-281}] ~~~ tp @e[type=armor_stand,tag=text8] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-321}] ~~~ tp @e[type=armor_stand,tag=text9] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-361}] ~~~ tp @e[type=armor_stand,tag=text10] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-401}] ~~~ tp @e[type=armor_stand,tag=text11] -197 198.2 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=-441}] ~~~ tp @e[type=armor_stand,tag=text12] -197 198.2 -202
execute @e[type=armor_stand,x=-198,y=197,z=-203,dx=2,dy=6,dz=2] ~~~ tp @s ~ ~0.02 ~
execute @e[type=armor_stand,x=-197,y=202,z=-202,r=1] ~~~ tp @s -197 5 -202
execute @e[type=armor_stand,name=main,scores={lobby_text_time=..-480}] ~~~ scoreboard players set @s lobby_text_time 0
#检测触发陷阱
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"红陷阱等级"=1..3}] ~~~ function test_red_team_trap_triggered
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"蓝陷阱等级"=1..3}] ~~~ function test_blue_team_trap_triggered
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"黄陷阱等级"=1..3}] ~~~ function test_yellow_team_trap_triggered
execute @e[type=armor_stand,name=main,scores={gameSTART=1,"绿陷阱等级"=1..3}] ~~~ function test_green_team_trap_triggered
#跑酷终点粒子效果
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ particle minecraft:totem_particle -203 223 -192

#test in_lobby
scoreboard players set @a in_lobby 0
scoreboard players set @a[x=-200,y=180,z=-200,r=50] in_lobby 1
#PARTICLE_menu
#menu_page1
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=1}] ~~~ function inventory_menu/menu_page/menu_page1
#menu_page2
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2}] ~~~ function inventory_menu/menu_page/menu_page2
#menu_page3
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3}] ~~~ function inventory_menu/menu_page/menu_page3

#change_to_menu1
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu1] ~~~ function inventory_menu/change_to_menu/change_to_menu1
#change_to_menu2
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu2] ~~~ function inventory_menu/change_to_menu/change_to_menu2
#change_to_menu3
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=change_to_menu3] ~~~ function inventory_menu/change_to_menu/change_to_menu3

#menu2-particle_purchase_none
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_none] ~~~ function inventory_menu/menu2-particle_purchase/menu2-particle_purchase_none
#menu2-particle_purchase_villagerhappy
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_villagerhappy] ~~~ function inventory_menu/menu2-particle_purchase/menu2-particle_purchase_villagerhappy
#menu2-particle_purchase_fire
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=particle_purchase_fire] ~~~ function inventory_menu/menu2-particle_purchase/menu2-particle_purchase_fire

#menu3-remove_start_players_required
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=remove_start_players_required] ~~~ function inventory_menu/menu3-change_start_players_required/remove_players
#menu3-add_start_players_required
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0},tag=add_start_players_required] ~~~ function inventory_menu/menu3-change_start_players_required/add_players

#非tag op玩家进入管理员菜单自动返回
execute @a[tag=!op,scores={menu_page=3}] ~~~ tag @s add change_to_menu1

#refresh_menu1
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=1},tag=refresh_menu1] ~~~ function inventory_menu/refresh_menu/refresh_menu1
#refresh_menu2
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=2},tag=refresh_menu2] ~~~ function inventory_menu/refresh_menu/refresh_menu2
#refresh_menu3
execute @a[x=-200,y=200,z=-200,r=50,scores={分队=0,menu_page=3},tag=refresh_menu3] ~~~ function inventory_menu/refresh_menu/refresh_menu3

#非tag op玩家进入管理员菜单自动返回
execute @a[tag=!op,scores={menu_page=3}] ~~~ tag @s add change_to_menu1


#粒子显示
execute @e[type=armor_stand,name=main,scores={function_tick=10}] ~~~ execute @e[type=player,scores={select_particle=1,respawning=!1,"出局观战"=!1,invisible_time=0}] ~~~ particle minecraft:villager_happy ~ ~0.2 ~
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ execute @e[type=player,scores={select_particle=1,respawning=!1,"出局观战"=!1,invisible_time=0}] ~~~ particle minecraft:villager_happy ~ ~0.2 ~
execute @e[type=armor_stand,name=main,scores={function_tick=10}] ~~~ execute @e[type=player,scores={select_particle=2,respawning=!1,"出局观战"=!1,invisible_time=0}] ~~~ particle minecraft:basic_flame_particle ~ ~0.2 ~
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ execute @e[type=player,scores={select_particle=2,respawning=!1,"出局观战"=!1,invisible_time=0}] ~~~ particle minecraft:basic_flame_particle ~ ~0.2 ~