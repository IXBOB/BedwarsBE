#设置near_diamond
tag @a remove near_diamond
execute @e[type=player,x=-40,y=186,z=-40,r=7] ~~~ tag @s add near_diamond
execute @e[type=player,x=-40,y=186,z=40,r=7] ~~~ tag @s add near_diamond
execute @e[type=player,x=40,y=186,z=40,r=7] ~~~ tag @s add near_diamond
execute @e[type=player,x=40,y=186,z=-40,r=7] ~~~ tag @s add near_diamond
#设置near_emerald
tag @a remove near_emerald
execute @e[type=player,x=0,y=185,z=0,r=10] ~~~ tag @s add near_emerald
#复制计分板数值给玩家
scoreboard players operation @a "钻石等级" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "钻石等级"
scoreboard players operation @a "钻石time" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "钻石time"
scoreboard players operation @a "绿宝石time" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿宝石time"
scoreboard players operation @a "绿宝石等级" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿宝石等级"
scoreboard players operation @a game.time.sec.1 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.sec.1
scoreboard players operation @a game.time.sec.2 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.sec.2
scoreboard players operation @a game.time.min.1 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.min.1
scoreboard players operation @a game.time.min.2 = @e[type=armor_stand,name=main,scores={gameSTART=1}] game.time.min.2
scoreboard players operation @a "红床存活" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "红床存活"
scoreboard players operation @a "蓝床存活" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝床存活"
scoreboard players operation @a "黄床存活" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "黄床存活"
scoreboard players operation @a "绿床存活" = @e[type=armor_stand,name=main,scores={gameSTART=1}] "绿床存活"
#无敌时间
execute @a[scores={"分队"=1..4,"存活"=1,"无敌时间"=1..},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ scoreboard players add @s "无敌时间" -1
execute @a[scores={"分队"=1..4,"存活"=1,"无敌时间"=20..},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ effect @s instant_health 1 255 true
execute @a[scores={"分队"=1..4,"存活"=1,"无敌时间"=0},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.ingameinfo.invincibility_over"} ] }
execute @a[scores={"分队"=1..4,"存活"=1,"无敌时间"=0},x=-63,y=90,z=-63,dx=126,dy=114,dz=126] ~~~ scoreboard players set @s "无敌时间" -1
#检测装备升级
execute @e[type=player,scores={"分队"=1..4,"出局观战"=0},tag=up_sword] ~~~ function weapon_upgrade
execute @e[type=player,scores={"分队"=1..4,"出局观战"=0},tag=up_pickaxe] ~~~ function weapon_upgrade
execute @e[type=player,scores={"分队"=1..4,"出局观战"=0},tag=up_axe] ~~~ function weapon_upgrade
execute @e[type=player,scores={"分队"=1..4,"出局观战"=0},tag=up_armor] ~~~ function weapon_upgrade
#检测搭桥蛋
execute @e[type=egg,x=-63,y=171,z=-63,dx=126,dy=44,dz=126] ~~~ function bridge_egg
#检测胜利
function test_win
#大厅actionbar
execute @a[x=-218,y=193,z=-218,r=50] ~~~ function lobby_actionbar
#玩家隐身
execute @s[scores={function_tick=20}] ~~~ execute @e[type=player,scores={invisible_time=1..}] ~~~ function invisible_time
#检测队伍剩余人数并显示
function scoreboard_team_display/test/red_player_count
function scoreboard_team_display/test/blue_player_count
function scoreboard_team_display/test/yellow_player_count
function scoreboard_team_display/test/green_player_count
#游戏开始玩家头顶显示血量
scoreboard objectives setdisplay belowname health
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
#火焰弹出界删除
execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 particle minecraft:dragon_death_explosion_emitter ~~~
execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#更改游戏模式
gamemode 0 @a[x=-63,y=90,z=-63,dx=126,dy=114,dz=126,scores={"分队"=1..4,respawning=0,able_to_respawn=1},tag=!insider]
gamemode 2 @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,tag=!insider]
#删除disabled_content
kill @e[type=item,name=disabled_content]
#红队队伍actionbar
execute @a[scores={"分队"=1,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_red"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_red"},{ "selector" :  "@a[scores={分队=1,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#蓝队队伍actionbar
execute @a[scores={"分队"=2,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_blue"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_blue"},{ "selector" :  "@a[scores={分队=2,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#黄队队伍actionbar
execute @a[scores={"分队"=3,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126]  ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_yellow"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_yellow"},{ "selector" :  "@a[scores={分队=3,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#绿队队伍actionbar
execute @a[scores={"分队"=4,"存活"=1},x=-63,y=90,z=-63,dx=126,dy=150,dz=126]  ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.information_line1_green"},{ "text" : "\n" },{"translate":"text.actionbar.ingameinfo.information_line2_green"},{ "selector" :  "@a[scores={分队=4,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line3"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.information_line4"},{"score":{"name":"@s","objective":"击杀数"}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"selector":"@s[tag=near_diamond]"},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_1"},{ "score" : { "name" : "@s" , "objective" : "钻石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "钻石time"}}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"text":"\n"}]}},{"translate":"%%5%%6%%7%%8","with":{"rawtext":[{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"selector":"@s[tag=near_emerald]"},{"translate":"text.actionbar.ingameinfo.information_line5_emerald_1"},{ "score" : { "name" : "@s" , "objective" : "绿宝石等级"}},{"translate":"text.actionbar.ingameinfo.information_line5_diamond_2"},{ "score" : { "name" : "@s" , "objective" : "绿宝石time"}}]}}]}
#淘汰后玩家actionbar
titleraw @a[rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1,"存活"=!1}] actionbar { "rawtext" : [{"translate":"text.actionbar.ingameinfo.spectator_information_line1"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line2"},{ "score" : { "name" : "@s" , "objective" : "game.time.min.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.min.1"}},{ "text" : " : " },{ "score" : { "name" : "@s" , "objective" : "game.time.sec.2"}},{ "score" : { "name" : "@s" , "objective" : "game.time.sec.1"}},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line3"},{"selector":"@a[scores={分队=1,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line4"},{"selector":"@a[scores={分队=2,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line5"},{"selector":"@a[scores={分队=3,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line6"},{"selector":"@a[scores={分队=4,存活=1}]"},{"text":"\n"},{"translate":"text.actionbar.ingameinfo.spectator_information_line7"} ] }
#删除背包
execute @s[scores={function_tick=20}] ~~~ clear @a[scores={"出局观战"=1,respawning=0}]
#删除屏障上的僵尸猪人
execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#删除屏障上的掉落物
execute @e[type=item] ~~~ detect ~ ~-1 ~ barrier 0 kill @s
#设置重生点
spawnpoint @a[scores={"分队"=1..4}] 0 210 0
#增加并计算游戏时间
execute @s[scores={function_tick=20}] ~~~ function add_and_calculate_game_time
#抬头返回功能
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=-89,rxm=-90,scores={able_to_respawn=0,"出局观战"=1}] ~~~ function headup_back_to_lobby
#移除非本队tag
tag @a[scores={"分队"=1}] remove team2
tag @a[scores={"分队"=1}] remove team3
tag @a[scores={"分队"=1}] remove team4
tag @a[scores={"分队"=2}] remove team1
tag @a[scores={"分队"=2}] remove team3
tag @a[scores={"分队"=2}] remove team4
tag @a[scores={"分队"=3}] remove team1
tag @a[scores={"分队"=3}] remove team2
tag @a[scores={"分队"=3}] remove team4
tag @a[scores={"分队"=4}] remove team1
tag @a[scores={"分队"=4}] remove team2
tag @a[scores={"分队"=4}] remove team3
#检测获取经验
function ore_get
#检测经验变化时重新计算经验
execute @s[scores={function_tick_5=1}] ~~~ execute @a[scores={"分队"=1..4,"出局观战"=0}] ~~~ function test_if_score_own_xp_changed_and_recount_xp
execute @s[scores={function_tick_5=1}] ~~~ execute @a[scores={"分队"=1..4,"出局观战"=0}] ~~~ scoreboard players operation @s own_xp_cache = @s own_xp
#事件系统相关================
#事件开始初始化
execute @s[scores={"显示事件"=0,"游戏模式"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_1_event_1 "显示" 120
execute @s[scores={"显示事件"=0,"游戏模式"=2}] ~~~ scoreboard players set text.scoreboard.ingameinfo.mode_2_event_1 "显示" 900
scoreboard players set @s[scores={"显示事件"=0}] "显示事件" 1
#事件倒计时-1
scoreboard players add @s[scores={"显示事件"=1..8,function_tick=20}] "事件倒计时" -1
execute @s[scores={"游戏模式"=1,"显示事件"=1,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_1 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=2,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_2 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=3,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_3 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=4,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_4 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=5,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_5 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=6,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_6 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=7,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_7 "显示" -1
execute @s[scores={"游戏模式"=1,"显示事件"=8,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_1_event_8 "显示" -1
execute @s[scores={"游戏模式"=2,"显示事件"=1,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_2_event_1 "显示" -1
execute @s[scores={"游戏模式"=2,"显示事件"=2,function_tick=20}] ~~~ scoreboard players add text.scoreboard.ingameinfo.mode_2_event_2 "显示" -1
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
#删除背包内的铁锭，金锭，钻石，绿宝石
clear @a iron_ingot
clear @a gold_ingot
clear @a diamond
clear @a emerald
#检测玩家是否中途退出再加入了下一局
function test_game_uid/test_game_uid