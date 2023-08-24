#开始游戏后大厅玩家抗性提升
execute @a[scores={in_lobby=1}] ~~~ function give_effect/gamestart1_2_lobby_effect
#游戏开始玩家头顶显示血量
scoreboard objectives setdisplay belowname health

#检测有人正在重生执行相关指令
execute @e[type=player,scores={respawning=1},x=0,y=200,z=0,c=1] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=1..2}] ~~~ function respawn/respawn_main
#给予玩家药水效果(mode=2开局急迫，队伍疯狂矿工的急迫效果)
function give_effect/assign