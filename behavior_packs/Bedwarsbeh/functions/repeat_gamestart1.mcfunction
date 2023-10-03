#设置游戏规则
function set_gamerule/set_gamestart1_gamerule
#检测大厅有游戏内玩家移出游戏
execute @a[scores={in_lobby=1,"分队"=1..4,"存活"=1}] ~~~ function back_to_lobby_unexpectedly_kick
#设置near_diamond
tag @a remove near_diamond
execute @e[type=bedwars:diamond_point_revolve] ~~~ tag @a[r=7] add near_diamond
#设置near_emerald
tag @a remove near_emerald
execute @e[type=bedwars:emerald_point_revolve] ~~~ tag @a[r=7] add near_emerald
#复制计分板数值给玩家
scoreboard players operation @a "钻石等级" = @s "钻石等级"
scoreboard players operation @a "钻石time" = @s "钻石time"
scoreboard players operation @a "绿宝石time" = @s "绿宝石time"
scoreboard players operation @a "绿宝石等级" = @s "绿宝石等级"
scoreboard players operation @a game.time.sec.1 = @s game.time.sec.1
scoreboard players operation @a game.time.sec.2 = @s game.time.sec.2
scoreboard players operation @a game.time.min.1 = @s game.time.min.1
scoreboard players operation @a game.time.min.2 = @s game.time.min.2
scoreboard players operation @a "红床存活" = @s "红床存活"
scoreboard players operation @a "蓝床存活" = @s "蓝床存活"
scoreboard players operation @a "黄床存活" = @s "黄床存活"
scoreboard players operation @a "绿床存活" = @s "绿床存活"
#无敌时间
execute @a[scores={"分队"=1..4,"存活"=1,"无敌时间"=1..},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ function invincibility_time
#检测胜利
execute @s[scores={function_tick_5=5}] ~~~ function test_win
#大厅actionbar
execute @s[scores={function_tick_5=5}] ~~~ execute @a[x=-218,y=193,z=-218,r=50] ~~~ function lobby_actionbar
#玩家隐身
execute @s[scores={function_tick_20=20}] ~~~ execute @e[type=player,scores={invisible_time=1..}] ~~~ function invisible_time
#检测队伍剩余人数并显示
function scoreboard_team_display/test/red_player_count
function scoreboard_team_display/test/blue_player_count
function scoreboard_team_display/test/yellow_player_count
function scoreboard_team_display/test/green_player_count
#红床存在将红非挂机玩家存活设1
execute @s[scores={"红床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=1}] "存活" 0
execute @s[scores={"红床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=1}] "存活" 1
#蓝床存在将蓝非挂机玩家存活设1
execute @s[scores={"蓝床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=2}] "存活" 0
execute @s[scores={"蓝床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=2}] "存活" 1
#黄床存在将红非挂机玩家存活设1
execute @s[scores={"黄床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=3}] "存活" 0
execute @s[scores={"黄床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=3}] "存活" 1
#绿床存在将蓝非挂机玩家存活设1
execute @s[scores={"绿床存活"=1}] ~~~ scoreboard players set @a[scores={"分队"=4}] "存活" 0
execute @s[scores={"绿床存活"=1}] ~~~ scoreboard players set @e[type=player,scores={"分队"=4}] "存活" 1
#更改游戏模式
gamemode 0 @a[x=-63,y=90,z=-63,dx=126,dy=114,dz=126,scores={"分队"=1..4,respawning=0,"出局观战"=0},tag=!insider,m=!0]
gamemode spectator @a[x=-63,y=90,z=-63,dx=126,dy=114,dz=126,scores={"分队"=1..4,"出局观战"=1},tag=!insider]
gamemode 2 @a[scores={in_lobby=1..2},tag=!insider,m=!2]
#红队队伍actionbar
execute @a[scores={"分队"=1,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_red"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_red"},{ "selector" :  "@a[scores={分队=1,存活=1,respawning=0,team_id=1..}]"},{"text":" §7"},{ "selector" :  "@a[scores={分队=1,respawning=1,team_id=1..}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#蓝队队伍actionbar
execute @a[scores={"分队"=2,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_blue"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_blue"},{ "selector" :  "@a[scores={分队=2,存活=1,respawning=0,team_id=1..}]"},{"text":" §7"},{ "selector" :  "@a[scores={分队=2,respawning=1,team_id=1..}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#黄队队伍actionbar
execute @a[scores={"分队"=3,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126]  ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_yellow"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_yellow"},{ "selector" :  "@a[scores={分队=3,存活=1,respawning=0,team_id=1..}]"},{"text":" §7"},{ "selector" :  "@a[scores={分队=3,respawning=1,team_id=1..}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#绿队队伍actionbar
execute @a[scores={"分队"=4,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126]  ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_green"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_green"},{ "selector" :  "@a[scores={分队=4,存活=1,respawning=0,team_id=1..}]"},{"text":" §7"},{ "selector" :  "@a[scores={分队=4,respawning=1,team_id=1..}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#淘汰后玩家actionbar
titleraw @a[rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1,"存活"=!1}] actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.spectator_information_line1"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line2"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line3"},{"selector":"@a[scores={分队=1,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line4"},{"selector":"@a[scores={分队=2,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line5"},{"selector":"@a[scores={分队=3,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line6"},{"selector":"@a[scores={分队=4,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line7"} ] }
#删除背包
execute @s[scores={function_tick_20=20}] ~~~ clear @a[scores={"出局观战"=1,respawning=0}]
#设置重生点
spawnpoint @a[scores={"分队"=1..4}] 0 210 0
#抬头返回功能
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=-89,rxm=-90,scores={able_to_respawn=0,"出局观战"=1}] ~~~ function headup_back_to_lobby

#检测经验变化时重新计算经验
execute @s[scores={function_tick_5=1}] ~~~ execute @a[scores={"分队"=1..4,"出局观战"=0}] ~~~ function test_if_score_own_xp_changed_and_recount_xp
execute @s[scores={function_tick_5=1}] ~~~ execute @a[scores={"分队"=1..4,"出局观战"=0}] ~~~ scoreboard players operation @s own_xp_cache = @s own_xp
#事件系统相关================
#事件倒计时-1
scoreboard players add @s[scores={"显示事件"=1..8,function_tick_20=20}] "事件倒计时" -1
#事件1
execute @s[scores={"显示事件"=1}] ~~~ function events/choose_execute_event_1
#事件2
execute @s[scores={"显示事件"=2}] ~~~ function events/choose_execute_event_2
#事件3
execute @s[scores={"显示事件"=3}] ~~~ function events/event_3
#事件4
execute @s[scores={"显示事件"=4}] ~~~ function events/event_4
#事件5
execute @s[scores={"显示事件"=5}] ~~~ function events/event_5
#事件6
execute @s[scores={"显示事件"=6}] ~~~ function events/event_6
#事件7
execute @s[scores={"显示事件"=7}] ~~~ function events/event_7
#事件8
execute @s[scores={"显示事件"=8}] ~~~ function events/event_8
#事件相关结束================
#检测玩家是否中途退出再加入了下一局
function test_game_uid/test_game_uid
#删除不合规物品和实体
function delete_non-compliant_item_and_entity
#杀死掉入虚空的玩家
execute @a[x=-63,y=88,z=-63,dx=126,dy=4,dz=126,scores={"分队"=1..4,"出局观战"=0}] ~~~ detect ~ ~ ~ structure_void 0 kill @s
#游戏区域tag+degrade
execute @a[scores={"分队"=1..4,"出局观战"=0},x=-63,y=171,z=-63,dx=126,dy=33,dz=126] ~~~ tag @s add degrade
#游戏开始时自动获取经验和硬币
execute @s[scores={function_tick_20=20,fc_tick_cycle=10}] ~~~ function add_xp_and_coin_game
#检测触发陷阱
execute @s[scores={red_trap_sum=1..3}] ~~~ function test_red_team_trap_triggered
execute @s[scores={blue_trap_sum=1..3}] ~~~ function test_blue_team_trap_triggered
execute @s[scores={yellow_trap_sum=1..3}] ~~~ function test_yellow_team_trap_triggered
execute @s[scores={green_trap_sum=1..3}] ~~~ function test_green_team_trap_triggered
#RandomDamageUID
scoreboard players random @s RandomDamageUID 1 999999999
#检测玩家加入观战
execute @e[type=player,x=-207,y=191,z=-192,dx=7,dy=5,dz=12] ~~~ function on_join_spectate
#大厅提示加入游戏粒子
execute @s[scores={function_tick_40=40}] ~~~ particle bedwars:lobby_portal -204 202 -192