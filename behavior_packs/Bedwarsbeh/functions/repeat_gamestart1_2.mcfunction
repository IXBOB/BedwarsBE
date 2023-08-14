#开始游戏后大厅玩家抗性提升
execute @a[scores={in_lobby=1}] ~~~ function give_effect/gamestart1_2_lobby_effect
#游戏开始玩家头顶显示血量
scoreboard objectives setdisplay belowname health

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
#给予玩家药水效果(mode=2开局急迫，队伍疯狂矿工的急迫效果)
function give_effect/assign