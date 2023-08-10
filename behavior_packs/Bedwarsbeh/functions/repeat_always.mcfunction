#设置循环游戏规则
function set_gamerule/set_repeat_gamerule

#循环指令
execute @s[scores={gameSTART=0}] ~~~ function repeat_gamestart0
execute @s[scores={gameSTART=1}] ~~~ function repeat_gamestart1
execute @s[scores={gameSTART=2}] ~~~ function repeat_gamestart2
execute @s[scores={gameSTART=1..2}] ~~~ function repeat_gamestart1_2

#dev
execute @s[scores={dev_mode=1}] ~~~ function repeat_dev

#function_tick
function function_tick/assign

#大厅跳到结构空位TP出生点
execute @a[x=-200,y=180,z=-200,r=50] ~~~ detect ~ ~ ~ structure_void 0 tp @s -200 200 -200

#所有玩家饱和
effect @a saturation 2 255 true

#复制gameSTART给玩家
scoreboard players operation @a gameSTART = @s gameSTART

#初始化重复检测大厅人数
scoreboard players reset @s "大厅人数"

#玩家被夺去tag=op时提示
execute @a[tag=op,tag=!get.op.tellrawed] ~~~ function on_get_op
execute @a[tag=!op,tag=get.op.tellrawed] ~~~ function on_take_away_op

#大厅滚动字体
execute @a[x=-200,y=200,z=-200,c=1,scores={in_lobby=1}] ~~~ execute @e[type=armor_stand,scores={function_tick_40=40}] ~~~ function summon_lobby_scroll_text
execute @a[x=-200,y=200,z=-200,c=1,scores={in_lobby=1}] ~~~ execute @e[type=armor_stand,x=-198,y=197,z=-203,dx=2,dy=6,dz=2] ~~~ tp @s ~ ~0.02 ~
execute @e[type=armor_stand,x=-197,y=202,z=-202,r=1] ~~~ event entity @s bedwars:remove_self

#跑酷终点粒子效果
execute @s[scores={function_tick_20=20}] ~~~ particle minecraft:totem_particle -203 223 -192

#test in_lobby
scoreboard players set @a in_lobby 0
scoreboard players set @a[x=-200,y=180,z=-200,r=50] in_lobby 1

#inventory_menu
#menu_page1
execute @a[x=-200,y=200,z=-200,r=50,scores={出局观战=0,in_lobby=1,menu_page=1}] ~~~ function inventory_menu/menu_page/menu_page1
#menu_page2
execute @a[x=-200,y=200,z=-200,r=50,scores={出局观战=0,in_lobby=1,menu_page=2}] ~~~ function inventory_menu/menu_page/menu_page2
#menu_page3
execute @a[x=-200,y=200,z=-200,r=50,scores={出局观战=0,in_lobby=1,menu_page=3}] ~~~ function inventory_menu/menu_page/menu_page3

#粒子显示
execute @s[scores={function_tick_20=10}] ~~~ execute @e[type=player,scores={respawning=!1,"出局观战"=!1,invisible_time=0}] ~~~ function display_particle
execute @s[scores={function_tick_20=20}] ~~~ execute @e[type=player,scores={respawning=!1,"出局观战"=!1,invisible_time=0}] ~~~ function display_particle