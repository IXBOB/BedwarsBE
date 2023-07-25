#检测红队床情况#红队√-显示
execute @e[type=armor_stand,scores={gameSTART=1,"红床存活"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.red_team_normal "显示" -4
execute @e[type=armor_stand,scores={gameSTART=1,"红床存活"=0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.red_team_normal "显示"
#检测蓝队床情况#蓝队√-显示
execute @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.blue_team_normal "显示" -5
execute @e[type=armor_stand,scores={gameSTART=1,"蓝床存活"=0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.blue_team_normal "显示"
#检测蓝队床情况#黄队√-显示
execute @e[type=armor_stand,scores={gameSTART=1,"黄床存活"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.yellow_team_normal "显示" -6
execute @e[type=armor_stand,scores={gameSTART=1,"黄床存活"=0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.yellow_team_normal "显示"
#检测蓝队床情况#绿队√-显示
execute @e[type=armor_stand,scores={gameSTART=1,"绿床存活"=1}] ~~~ scoreboard players set text.scoreboard.ingameinfo.green_team_normal "显示" -7
execute @e[type=armor_stand,scores={gameSTART=1,"绿床存活"=0}] ~~~ scoreboard players reset text.scoreboard.ingameinfo.green_team_normal "显示"