scoreboard players set @e[type=armor_stand,name=main] gameSTART 0
tag @e[type=armor_stand,name=main] add set.start.players.2
tag @e[type=armor_stand,name=main] remove set.start.players.3
tag @e[type=armor_stand,name=main] remove set.start.players.4
tag @e[type=armor_stand,name=main] remove set.start.players.5
tag @e[type=armor_stand,name=main] remove set.start.players.6
tag @e[type=armor_stand,name=main] remove set.start.players.7
tag @e[type=armor_stand,name=main] remove set.start.players.8
tag @e[type=armor_stand,name=main] remove have.set.start.players.2
tag @e[type=armor_stand,name=main] remove have.set.start.players.3
tag @e[type=armor_stand,name=main] remove have.set.start.players.4
tag @e[type=armor_stand,name=main] remove have.set.start.players.5
tag @e[type=armor_stand,name=main] remove have.set.start.players.6
tag @e[type=armor_stand,name=main] remove have.set.start.players.7
tag @e[type=armor_stand,name=main] remove have.set.start.players.8
function change_start_player_count
scoreboard players set @e[type=armor_stand,name=main] constant_2 2
scoreboard players set @e[type=armor_stand,name=main] exp_lv_up_need 1000
scoreboard players set @e[type=armor_stand,name=main] game_version 2
scoreboard players set @e[type=armor_stand,name=main] language 1
scoreboard players set @e[type=armor_stand,name=main] "大厅人数" 0
scoreboard players set @e[type=armor_stand,name=main] "地图选择" 1
scoreboard players set @e[type=armor_stand,name=main] "游戏地图" 1
scoreboard players set @e[type=armor_stand,name=main] "游戏模式" 2
