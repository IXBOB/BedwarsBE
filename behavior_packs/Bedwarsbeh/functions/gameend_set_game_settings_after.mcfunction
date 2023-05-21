#TP
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ tp @a -200 205 -200
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
#pvp false
gamerule pvp false
#reset firework
scoreboard players reset * firework
#reset游戏显示
scoreboard players reset * "游戏显示"
#set游戏显示
scoreboard players set §r "游戏显示" -6
#set游戏显示
scoreboard players set "§7Created by IXBOB" "游戏显示" -7
#set游戏显示
scoreboard players set "§7Thanks for playing" "游戏显示" -8
#tag-degrade
tag @a remove degrade
#setdisplay大厅显示
scoreboard objectives setdisplay sidebar "大厅显示"
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







