scoreboard players add @s assign_team_id 1
#分队 1 (红)
tag @r[type=player,scores={"分队"=0}] add set_team_1
scoreboard players set @a[tag=set_team_1] "分队" 1
scoreboard players operation @a[tag=set_team_1] team_id = @s assign_team_id
tag @a remove set_team_1
#分队 2 (蓝)
tag @r[type=player,scores={"分队"=0}] add set_team_2
scoreboard players set @a[tag=set_team_2] "分队" 2
scoreboard players operation @a[tag=set_team_2] team_id = @s assign_team_id
tag @a remove set_team_2
#分队 3 (黄)
tag @r[type=player,scores={"分队"=0}] add set_team_3
scoreboard players set @a[tag=set_team_3] "分队" 3
scoreboard players operation @a[tag=set_team_3] team_id = @s assign_team_id
tag @a remove set_team_3
#分队 4 (绿)
tag @r[type=player,scores={"分队"=0}] add set_team_4
scoreboard players set @a[tag=set_team_4] "分队" 4
scoreboard players operation @a[tag=set_team_4] team_id = @s assign_team_id
tag @a remove set_team_4
#检测是否还有人未被分队。是->再次执行一遍上面的指令，否->结束function
execute @e[type=player,scores={"分队"=0},x=-200,y=200,z=-200,c=1] ~~~ function gamestart_set_team