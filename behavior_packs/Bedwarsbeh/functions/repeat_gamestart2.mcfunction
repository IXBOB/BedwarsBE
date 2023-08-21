#设置游戏规则
function set_gamerule/set_gamestart2_gamerule
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
#玩家隐身
execute @e[type=armor_stand,name=main,scores={function_tick_20=20}] ~~~ execute @e[type=player,scores={invisible_time=1..}] ~~~ function invisible_time
#大厅actionbar
execute @a[x=-218,y=193,z=-218,r=50] ~~~ function lobby_actionbar
#胜利烟花
execute @s[scores={function_tick_20=10}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
execute @s[scores={function_tick_20=20}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
#更改游戏模式
gamemode 2 @a[x=-218,y=193,z=-218,dx=36,dy=50,dz=40,tag=!insider,m=!2]
#删除背包
clear @a[scores={"出局观战"=1,respawning=0}]
#设置重生点
spawnpoint @a[scores={"分队"=1..4}] 0 210 0
#抬头返回功能
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=-89,rxm=-90,scores={able_to_respawn=0,"出局观战"=1}] ~~~ function headup_back_to_lobby
#检测玩家是否中途退出再加入了下一局
function test_game_uid/test_game_uid
#删除不合规物品
function delete_non-compliant_item_and_entity
#RandomDamageUID
scoreboard players reset @s RandomDamageUID
#重置结束后后复制游戏模式告示牌
#复制大厅不可选择告示牌
execute @s[tag=reset_OK,scores={"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -200 200 -206
execute @s[tag=reset_OK,scores={"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -200 200 -206