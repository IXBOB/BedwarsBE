#设定各队存在初始值 0
scoreboard players set @s "红队存在" 0
scoreboard players set @s "蓝队存在" 0
scoreboard players set @s "黄队存在" 0
scoreboard players set @s "绿队存在" 0

#检测红队剩余人数
execute @s[scores={"红床存活"=0}] ~~~ execute @a[scores={"分队"=1,"存活"=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main] "红队存在" 1
#检测红队床存在
execute @s[scores={"红床存活"=1}] ~~~ scoreboard players set @s "红队存在" 1
#检测蓝队剩余人数
execute @s[scores={"蓝床存活"=0}] ~~~ execute @a[scores={"分队"=2,"存活"=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main] "蓝队存在" 1
#检测蓝队床存在
execute @s[scores={"蓝床存活"=1}] ~~~ scoreboard players set @s "蓝队存在" 1
#检测黄队剩余人数
execute @s[scores={"黄床存活"=0}] ~~~ execute @a[scores={"分队"=3,"存活"=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main] "黄队存在" 1
#检测黄队床存在
execute @s[scores={"黄床存活"=1}] ~~~ scoreboard players set @s "黄队存在" 1
#检测绿队剩余人数
execute @s[scores={"绿床存活"=0}] ~~~ execute @a[scores={"分队"=4,"存活"=1}] ~~~ scoreboard players set @e[type=armor_stand,name=main] "绿队存在" 1
#检测绿队床存在
execute @s[scores={"绿床存活"=1}] ~~~ scoreboard players set @s "绿队存在" 1

#红团灭tellraw
execute @s[scores={"红队存在"=0},tag=!red_team_ace_tellrawed] ~~~ tellraw @a { "rawtext" : [ { "text" : "\n" },{ "translate" : "text.tellraw.ingameinfo.red_team_wiped" },{ "text" : "\n§r" } ] }
execute @s[scores={"红队存在"=0},tag=!red_team_ace_tellrawed] ~~~ tag @s add red_team_ace_tellrawed
#蓝团灭tellraw
execute @s[scores={"蓝队存在"=0},tag=!blue_team_ace_tellrawed] ~~~ tellraw @a { "rawtext" : [ { "text" : "\n" },{ "translate" : "text.tellraw.ingameinfo.blue_team_wiped" },{ "text" : "\n§r" } ] }
execute @s[scores={"蓝队存在"=0},tag=!blue_team_ace_tellrawed] ~~~ tag @s add blue_team_ace_tellrawed
#黄团灭tellraw
execute @s[scores={"黄队存在"=0},tag=!yellow_team_ace_tellrawed] ~~~ tellraw @a { "rawtext" : [ { "text" : "\n" },{ "translate" : "text.tellraw.ingameinfo.yellow_team_wiped" },{ "text" : "\n§r" } ] }
execute @s[scores={"黄队存在"=0},tag=!yellow_team_ace_tellrawed] ~~~ tag @s add yellow_team_ace_tellrawed
#绿团灭tellraw
execute @s[scores={"绿队存在"=0},tag=!green_team_ace_tellrawed] ~~~ tellraw @a { "rawtext" : [ { "text" : "\n" },{ "translate" : "text.tellraw.ingameinfo.green_team_wiped" },{ "text" : "\n§r" } ] }
execute @s[scores={"绿队存在"=0},tag=!green_team_ace_tellrawed] ~~~ tag @s add green_team_ace_tellrawed

#检测红队胜利
execute @s[scores={"红队存在"=1,"蓝队存在"=0,"黄队存在"=0,"绿队存在"=0}] ~~~ function team_win/red_team_win
#检测蓝队胜利
execute @s[scores={"红队存在"=0,"蓝队存在"=1,"黄队存在"=0,"绿队存在"=0}] ~~~ function team_win/blue_team_win
#检测黄队胜利
execute @s[scores={"红队存在"=0,"蓝队存在"=0,"黄队存在"=1,"绿队存在"=0}] ~~~ function team_win/yellow_team_win
#检测绿队胜利
execute @s[scores={"红队存在"=0,"蓝队存在"=0,"黄队存在"=0,"绿队存在"=1}] ~~~ function team_win/green_team_win
#检测无人胜利(出现问题或全员退出)
execute @s[scores={"红队存在"=0,"蓝队存在"=0,"黄队存在"=0,"绿队存在"=0}] ~~~ function set_draw_condition
execute @s[scores={gameSTART=2,"红队存在"=0,"蓝队存在"=0,"黄队存在"=0,"绿队存在"=0}] ~~~ function test_draw