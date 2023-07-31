#开始游戏后大厅玩家虚弱
effect @a[x=-218,y=193,z=-218,r=50] weakness 2 255 true
#开始游戏后大厅玩家抗性提升
effect @a[x=-218,y=193,z=-218,r=50] resistance 2 255 true
#游戏开始玩家头顶显示血量
scoreboard objectives setdisplay belowname health

#游戏开始后还原被破坏的红队伍箱
execute @s ~~~ detect 1 185 58 air 0 structure load bedwars:red_team_chest 1 185 58
execute @s ~~~ detect -1 185 58 air 0 structure load bedwars:red_team_enderchest -1 185 58
#游戏开始后还原被破坏的蓝队伍箱
execute @s ~~~ detect -1 185 58 air 0 structure load bedwars:blue_team_chest -1 185 58
execute @s ~~~ detect 1 185 58 air 0 structure load bedwars:blue_team_enderchest 1 185 58
#游戏开始后还原被破坏的黄队伍箱
execute @s ~~~ detect 58 185 -1 air 0 structure load bedwars:yellow_team_chest 58 185 -1
execute @s ~~~ detect 58 185 1 air 0 structure load bedwars:yellow_team_enderchest 58 185 1
#游戏开始后还原被破坏的绿队伍箱
execute @s ~~~ detect -58 185 1 air 0 structure load bedwars:green_team_chest -58 185 1
execute @s ~~~ detect -58 185 -1 air 0 structure load bedwars:green_team_enderchest -58 185 -1
#检测有人正在重生执行相关指令
execute @e[type=player,scores={respawning=1},x=0,y=200,z=0,c=1] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ function respawn/respawn_main
#游戏中拒绝使用function console指令调整人数
execute @a[tag=op,tag=set.start.players.2] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @a[tag=op,tag=set.start.players.3] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @a[tag=op,tag=set.start.players.4] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @a[tag=op,tag=set.start.players.5] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @a[tag=op,tag=set.start.players.6] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @a[tag=op,tag=set.start.players.7] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
execute @a[tag=op,tag=set.start.players.8] ~~~ tellraw @s { "rawtext" : [{"translate":"text.tellraw.custom_command.change_denied"} ] }
#删除玩家的设置游戏开始所需人数tag
tag @a remove set.start.players.2
tag @a remove set.start.players.3
tag @a remove set.start.players.4
tag @a remove set.start.players.5
tag @a remove set.start.players.6
tag @a remove set.start.players.7
tag @a remove set.start.players.8
#重复复制队伍商店告示牌
execute @s[scores={function_tick_20=20}] ~~~ function ingame_structure_loop_replace
#疾速模式速度I和急迫I
execute @s[scores={"游戏模式"=2}] ~~~ effect @a[scores={"分队"=1..4,"存活"=1}] speed 1 0 true
execute @s[scores={"游戏模式"=2}] ~~~ effect @a[scores={"分队"=1..4,"存活"=1}] haste 1 0 true