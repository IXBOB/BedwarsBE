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
clone 293 4 296 293 4 296 -200 200 -204
setblock -200 201 -205 air
#大厅actionbar
titleraw @a[x=-218,y=193,z=-218,r=50] actionbar { "rawtext" : [ { "text" : "§r§fLevel: §b§l" },{ "score" : { "name" : "@s" , "objective" : "等级"}},{ "text" : "    §r§fExp: §b§l" },{ "score" : { "name" : "@s" , "objective" : "等级经验"}},{ "text" : "§b / 1000\n" },{ "text" : "§r§fCoins: §e§l" },{ "score" : { "name" : "@s" , "objective" : "硬币数"}},{ "text" : "\n§r§fTotal kills: §e§l" },{ "score" : { "name" : "@s" , "objective" : "总击杀数"}},{ "text" : "\n§r§fTotal wins: §e§l" },{ "score" : { "name" : "@s" , "objective" : "胜场数"}},{ "text" : "   §r§fTotal games: §e§l" },{ "score" : { "name" : "@s" , "objective" : "总游戏数"}} ] }
#胜利烟花
execute @s[scores={function_tick=10}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket
execute @s[scores={function_tick=20}] ~~~ execute @a[scores={firework=1}] ~~~ summon minecraft:fireworks_rocket