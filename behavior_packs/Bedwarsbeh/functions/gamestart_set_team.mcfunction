#分队 1 (红)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 1
#分队 2 (蓝)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 2
#分队 3 (黄)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 3
#分队 4 (绿)
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ scoreboard players set @r[type=player,scores={"分队"=0}] "分队" 4
#检测是否还有人未被分队
execute @e[type=armor_stand,name=main,scores={starting=1},tag=reset_OK] ~~~ execute @e[type=player,scores={"分队"=0},x=-200,y=200,z=-200,c=1] ~~~ function gamestart_set_team