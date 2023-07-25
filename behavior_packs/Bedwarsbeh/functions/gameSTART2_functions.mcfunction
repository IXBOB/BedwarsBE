#游戏结算时传送屏障上红队至基地
execute @a[scores={"分队"=1,respawning=0}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 53 facing 0 182 0
#游戏结算时传送屏障上蓝队至基地
execute @a[scores={"分队"=2,respawning=0}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 0 186 -53 facing 0 182 0
#游戏结算时传送屏障上红队至基地
execute @a[scores={"分队"=3,respawning=0}] ~~~ detect ~ ~ ~ structure_void 0 tp @s 53 186 0 facing 0 182 0
#游戏结算时传送屏障上蓝队至基地
execute @a[scores={"分队"=4,respawning=0}] ~~~ detect ~ ~ ~ structure_void 0 tp @s -53 186 0 facing 0 182 0
#重生中的玩家设置respawning 0
execute @a[scores={"分队"=1..4,respawning=1}] ~~~ scoreboard players set @s respawning 0
#gamestart=2,复制告示牌游戏未开始
structure load bedwars:lobby_wait_start_sign -200 200 -204
setblock -200 201 -205 air
#玩家隐身
execute @e[type=armor_stand,name=main,scores={function_tick=20}] ~~~ execute @e[type=player,scores={invisible_time=1..}] ~~~ function invisible_time
#大厅actionbar
execute @a[x=-218,y=193,z=-218,r=50] ~~~ function lobby_actionbar
#胜利烟花
execute @s[scores={function_tick=10}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
execute @s[scores={function_tick=20}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
#火焰弹出界删除
execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 particle minecraft:dragon_death_explosion_emitter ~~~
execute @e[type=snowball] ~ ~ ~ detect ~ 0 ~ deny 0 kill @s
#更改游戏模式
gamemode 2 @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,tag=!insider]
#删除disabled_content
kill @e[type=item,name=disabled_content]
#删除背包
clear @a[scores={"出局观战"=1,respawning=0}]
#删除屏障上的僵尸猪人
execute @e[type=zombie_pigman] ~~~ detect ~ ~-1 ~ barrier 0 tp @s 0 -100 0
#删除屏障上的掉落物
execute @e[type=item] ~~~ detect ~ ~-1 ~ barrier 0 kill @s
#设置重生点
spawnpoint @a[scores={"分队"=1..4}] 0 210 0
#抬头返回功能
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=-89,rxm=-90,scores={able_to_respawn=0,"出局观战"=1}] ~~~ function headup_back_to_lobby
#删除背包内的铁锭，金锭，钻石，绿宝石
clear @a iron_ingot
clear @a gold_ingot
clear @a diamond
clear @a emerald
#检测玩家是否中途退出再加入了下一局
function test_game_uid/test_game_uid