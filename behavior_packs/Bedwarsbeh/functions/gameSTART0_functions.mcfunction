#tag+sound20
execute @s[scores={starting=0},tag=!sound20] ~~~ tag @s add sound20
#tag+sound15
execute @s[scores={starting=0},tag=!sound15] ~~~ tag @s add sound15
#tag+sound10
execute @s[scores={starting=0},tag=!sound10] ~~~ tag @s add sound10
#tag+sound5
execute @s[scores={starting=0},tag=!sound5] ~~~ tag @s add sound5
#tag+sound4
execute @s[scores={starting=0},tag=!sound4] ~~~ tag @s add sound4
#tag+sound3
execute @s[scores={starting=0},tag=!sound3] ~~~ tag @s add sound3
#tag+sound2
execute @s[scores={starting=0},tag=!sound2] ~~~ tag @s add sound2
#tag+sound1
execute @s[scores={starting=0},tag=!sound1] ~~~ tag @s add sound1
#设置倒计时时间
execute @s[scores={starting=0}] ~~~ scoreboard players set @s "开始倒计时" 20
#gameSTART=0删除僵尸猪人
kill @e[type=minecraft:zombie_pigman]
#重置地图
function reset_map
#游戏未开始传送游戏区玩家到大厅
execute @a[x=-63,y=92,z=-63,dx=126,dy=120,dz=126] ~~~ effect @s clear
execute @a[x=-63,y=92,z=-63,dx=126,dy=120,dz=126] ~~~ tp @s[tag=!insider] -200 200 -200
execute @a[x=-63,y=92,z=-63,dx=126,dy=120,dz=126] ~~~ xp -99999L @s
execute @a[x=-63,y=92,z=-63,dx=127,dy=120,dz=127] ~~~ clear @s[tag=!insider]
#游戏未开始时删除僵尸猪人
execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#gamestart=0,复制告示牌游戏未开始
structure load bedwars:lobby_wait_start_sign -200 200 -204
setblock -200 201 -205 air
#游戏重置前复制地图选择告示牌
execute @s[scores={"地图选择"=0,starting=0,reseting=0},tag=!reset_OK] ~~~ structure load bedwars:lobby_map0_sign -203 200 -197
execute @s[scores={"地图选择"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ structure load bedwars:lobby_map1_sign -203 200 -197
execute @s[scores={"地图选择"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ structure load bedwars:lobby_map2_sign -203 200 -197
execute @s[scores={"地图选择"=3,starting=0,reseting=0},tag=!reset_OK] ~~~ structure load bedwars:lobby_map3_sign -203 200 -197
#重置结束后后复制地图选择告示牌
execute @s[scores={reseting=1,"游戏地图"=1,function_tick=20}] ~~~ structure load bedwars:lobby_map1_lock_sign -203 200 -197
execute @s[scores={reseting=1,"游戏地图"=2,function_tick=20}] ~~~ structure load bedwars:lobby_map2_lock_sign -203 200 -197
execute @s[scores={reseting=1,"游戏地图"=3,function_tick=20}] ~~~ structure load bedwars:lobby_map3_lock_sign -203 200 -197
execute @s[scores={starting=1,"游戏地图"=1,function_tick=20}] ~~~ structure load bedwars:lobby_map1_lock_sign -203 200 -197
execute @s[scores={starting=1,"游戏地图"=2,function_tick=20}] ~~~ structure load bedwars:lobby_map2_lock_sign -203 200 -197
execute @s[scores={starting=1,"游戏地图"=3,function_tick=20}] ~~~ structure load bedwars:lobby_map3_lock_sign -203 200 -197
execute @s[tag=reset_OK,scores={starting=0,"游戏地图"=1,function_tick=20}] ~~~ structure load bedwars:lobby_map1_lock_sign -203 200 -197
execute @s[tag=reset_OK,scores={starting=0,"游戏地图"=2,function_tick=20}] ~~~ structure load bedwars:lobby_map2_lock_sign -203 200 -197
execute @s[tag=reset_OK,scores={starting=0,"游戏地图"=3,function_tick=20}] ~~~ structure load bedwars:lobby_map3_lock_sign -203 200 -197
#检测按下按钮更换模式
execute @s[scores={starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ scoreboard players add @e[scores={starting=0,reseting=0},tag=!reset_OK] "游戏模式" 1
execute @s[scores={starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=!op] ~~~ tellraw @s { "rawtext" : [ {"translate":"text.tellraw.waitinfo.change_mode_denied"} ] }
execute @s[scores={"游戏模式"=3..,starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=0,"游戏模式"=3..,starting=0,reseting=0}] "游戏模式" 1
execute @s[scores={starting=0,reseting=0},tag=!reset_OK] ~~~ execute @e[type=player,x=-202,y=201,z=-196,r=3,c=1] ~~~ detect -202 201 -196 polished_blackstone_button 9 execute @s[tag=op] ~~~ tellraw @a { "rawtext" : [ {"translate":"text.tellraw.waitinfo.change_mode_success","with":{"rawtext":[{"selector":"@e[type=armor_stand,name=main,scores={游戏模式=2}]"},{"translate":"text.tellraw.waitinfo.change_mode_2"},{"translate":"text.tellraw.waitinfo.change_mode_1"}]}} ] }
execute @s[scores={starting=0,reseting=0},tag=!reset_OK] ~~~ detect -202 201 -196 polished_blackstone_button 9 setblock -202 201 -196 polished_blackstone_button 1
#游戏开始前复制可更改游戏模式告示牌
execute @s[scores={"游戏模式"=1,starting=0,reseting=0},tag=!reset_OK] ~~~ structure load bedwars:lobby_mode1_sign -202 200 -197
execute @s[scores={"游戏模式"=2,starting=0,reseting=0},tag=!reset_OK] ~~~ structure load bedwars:lobby_mode2_sign -202 200 -197
#当 即将设置的最少开始玩家数 等于 已设置的最少开始玩家数 时tellraw管理员
execute @s[tag=set.start.players.2] ~~~ execute @a[tag=op,tag=set.start.players.2] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_2_already"} ] }
execute @s[tag=set.start.players.3] ~~~ execute @a[tag=op,tag=set.start.players.3] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_3_already"} ] }
execute @s[tag=set.start.players.4] ~~~ execute @a[tag=op,tag=set.start.players.4] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_4_already"} ] }
execute @s[tag=set.start.players.5] ~~~ execute @a[tag=op,tag=set.start.players.5] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_5_already"} ] }
execute @s[tag=set.start.players.6] ~~~ execute @a[tag=op,tag=set.start.players.6] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_6_already"} ] }
execute @s[tag=set.start.players.7] ~~~ execute @a[tag=op,tag=set.start.players.7] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_7_already"} ] }
execute @s[tag=set.start.players.8] ~~~ execute @a[tag=op,tag=set.start.players.8] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_commands.set_player_count_8_already"} ] }
#给予tag并调整人数
function change_start_player_count
#检测人数
execute @e[type=player] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 2
execute @s[tag=reset_OK] ~~~ scoreboard players operation @a "大厅人数" = @s "大厅人数"
execute @s[tag=reset_OK] ~~~ scoreboard players operation @a "开始倒计时" = @s "开始倒计时"
#房主更改游戏开始所需人数时tellraw提示
execute @s[tag=set.start.players.2,tag=!set.players.2.tellrawed] ~~~ function commands/test_tag/set.players.2.tellrawed
execute @s[tag=set.start.players.3,tag=!set.players.3.tellrawed] ~~~ function commands/test_tag/set.players.3.tellrawed
execute @s[tag=set.start.players.4,tag=!set.players.4.tellrawed] ~~~ function commands/test_tag/set.players.4.tellrawed
execute @s[tag=set.start.players.5,tag=!set.players.5.tellrawed] ~~~ function commands/test_tag/set.players.5.tellrawed
execute @s[tag=set.start.players.6,tag=!set.players.6.tellrawed] ~~~ function commands/test_tag/set.players.6.tellrawed
execute @s[tag=set.start.players.7,tag=!set.players.7.tellrawed] ~~~ function commands/test_tag/set.players.7.tellrawed
execute @s[tag=set.start.players.8,tag=!set.players.8.tellrawed] ~~~ function commands/test_tag/set.players.8.tellrawed
#游戏结束时大厅actionbar
execute @s[type=armor_stand,scores={starting=0..1},tag=reset_OK] ~~~ execute @a ~~~ function lobby_actionbar
#等待玩家时设置显示计分板
execute @s[type=armor_stand,name=main,scores={function_tick=20}] ~~~ function set_gameSTART0_waiting_scoreboard
#删除玩家观战tag
execute @s[type=armor_stand,name=main,scores={function_tick=20}] ~~~ tag * remove from_lobby_spectator
#设置计分板游戏倒计时
execute @s[type=armor_stand,scores={starting=1,function_tick=20,"开始倒计时"=0..20},tag=reset_OK] ~~~ function refresh_starting_scoreboard
execute @s[type=armor_stand,scores={starting=0..1},tag=reset_OK] ~~~ scoreboard players reset text.scoreboard.waitinfo.preparing "显示"
#设置starting值
function set.game.starting
#传送结束时有分队值的玩家到大厅并清空背包
tp @a[scores={"分队"=1..4},tag=!insider] -200 200 -200
scoreboard players set @a[scores={"分队"=1..4}] "分队" 0
#检测按下按钮更换地图
execute @s[scores={reseting=0,starting=0},tag=!reset_OK] ~~~ detect -203 201 -196 polished_blackstone_button 9 function button_change_map
#游戏未开始tag-team
tag @a remove team1
tag @a remove team2
#游戏未开始时删除火焰弹（雪球）
execute @e[type=snowball] ~~~ kill @s
#设置重生时间100
execute @s[scores={starting=1}] ~~~ scoreboard players set * "重生时间" 100
#设置able_to_respawn0
execute @s[scores={starting=1}] ~~~ scoreboard players set * able_to_respawn 0
#游戏开始初始化
execute @s[scores={starting=1,"开始倒计时"=-1}] ~~~ function gamestart_reset_game_settings
#更改游戏模式
gamemode 2 @a[tag=!insider]
#游戏开始倒计时
execute @s[scores={starting=1,"开始倒计时"=0..20,function_tick=20},tag=reset_OK] ~~~ function startgame_timer
#开始倒计时-1
scoreboard players add @s[scores={starting=1,"开始倒计时"=0..,function_tick=20},tag=reset_OK] "开始倒计时" -1