#激活此function的在armor_stand实体文件中
#红铁生成
scoreboard players add @s 红铁time -1
execute @s[scores={红铁time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=..99}] R_iron_count 3
execute @s[scores={红铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..,R_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ function spawn_dropped_iron/x3
execute @s[scores={红铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_iron,scores={R_iron_count=1..,R_spawned_iron=..63}] ~~~ scoreboard players add @s R_spawned_iron 3
execute @s[scores={红铁time=..0}] ~~~ execute @a[tag=on_iron_block_red] ~~~ function ore_get/iron_and_gold/red
execute @s[scores={红铁time=..0,游戏模式=1}] ~~~ scoreboard players set @s 红铁time 2
execute @s[scores={红铁time=..0,游戏模式=2}] ~~~ scoreboard players set @s 红铁time 1
#蓝铁生成
scoreboard players add @s 蓝铁time -1
execute @s[scores={蓝铁time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=..99}] B_iron_count 3
execute @s[scores={蓝铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=1..,B_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ function spawn_dropped_iron/x3
execute @s[scores={蓝铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_iron,scores={B_iron_count=1..,B_spawned_iron=..63}] ~~~ scoreboard players add @s B_spawned_iron 3
execute @s[scores={蓝铁time=..0}] ~~~ execute @a[tag=on_iron_block_blue] ~~~ function ore_get/iron_and_gold/blue
execute @s[scores={蓝铁time=..0,游戏模式=1}] ~~~ scoreboard players set @s 蓝铁time 2
execute @s[scores={蓝铁time=..0,游戏模式=2}] ~~~ scoreboard players set @s 蓝铁time 1
#黄铁生成
scoreboard players add @s 黄铁time -1
execute @s[scores={黄铁time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=..99}] Y_iron_count 3
execute @s[scores={黄铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=1..,Y_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ function spawn_dropped_iron/z3
execute @s[scores={黄铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.yellow_iron,scores={Y_iron_count=1..,Y_spawned_iron=..63}] ~~~ scoreboard players add @s Y_spawned_iron 3
execute @s[scores={黄铁time=..0}] ~~~ execute @a[tag=on_iron_block_yellow] ~~~ function ore_get/iron_and_gold/yellow
execute @s[scores={黄铁time=..0,游戏模式=1}] ~~~ scoreboard players set @s 黄铁time 2
execute @s[scores={黄铁time=..0,游戏模式=2}] ~~~ scoreboard players set @s 黄铁time 1
#绿铁生成
scoreboard players add @s 绿铁time -1
execute @s[scores={绿铁time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=..99}] G_iron_count 3
execute @s[scores={绿铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=1..,G_spawned_iron=..5}] ~~~ execute @e[type=bedwars:iron_point_green_invisible,tag=iron_point_green] ~~~ function spawn_dropped_iron/z3
execute @s[scores={绿铁time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.green_iron,scores={G_iron_count=1..,G_spawned_iron=..63}] ~~~ scoreboard players add @s G_spawned_iron 3
execute @s[scores={绿铁time=..0}] ~~~ execute @a[tag=on_iron_block_green] ~~~ function ore_get/iron_and_gold/green
execute @s[scores={绿铁time=..0,游戏模式=1}] ~~~ scoreboard players set @s 绿铁time 2
execute @s[scores={绿铁time=..0,游戏模式=2}] ~~~ scoreboard players set @s 绿铁time 1
#红家金生成
scoreboard players add @s red_gold_time -1
execute @s[scores={red_gold_time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=..99}] R_gold_count 8
execute @s[scores={red_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=8..,R_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_red_invisible,tag=iron_point_red] ~~~ summon bedwars:dropped_gold_ingot ~~~
execute @s[scores={red_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.red_gold,scores={R_gold_count=8..,R_spawned_gold=..11}] ~~~ scoreboard players add @s R_spawned_gold 1
execute @s[scores={red_gold_time=..0,红锻炉等级=0}] ~~~ scoreboard players set @s red_gold_time 6
execute @s[scores={red_gold_time=..0,红锻炉等级=1}] ~~~ scoreboard players set @s red_gold_time 5
execute @s[scores={red_gold_time=..0,红锻炉等级=2}] ~~~ scoreboard players set @s red_gold_time 4
execute @s[scores={red_gold_time=..0,红锻炉等级=3}] ~~~ scoreboard players set @s red_gold_time 3
execute @s[scores={red_gold_time=..0,红锻炉等级=4}] ~~~ scoreboard players set @s red_gold_time 2
#蓝家金生成
scoreboard players add @s blue_gold_time -1
execute @s[scores={blue_gold_time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=..99}] B_gold_count 8
execute @s[scores={blue_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=8..,B_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_blue_invisible,tag=iron_point_blue] ~~~ summon bedwars:dropped_gold_ingot ~~~
execute @s[scores={blue_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.blue_gold,scores={B_gold_count=8..,B_spawned_gold=..11}] ~~~ scoreboard players add @s B_spawned_gold 1
execute @s[scores={blue_gold_time=..0,蓝锻炉等级=0}] ~~~ scoreboard players set @s blue_gold_time 6
execute @s[scores={blue_gold_time=..0,蓝锻炉等级=1}] ~~~ scoreboard players set @s blue_gold_time 5
execute @s[scores={blue_gold_time=..0,蓝锻炉等级=2}] ~~~ scoreboard players set @s blue_gold_time 4
execute @s[scores={blue_gold_time=..0,蓝锻炉等级=3}] ~~~ scoreboard players set @s blue_gold_time 3
execute @s[scores={blue_gold_time=..0,蓝锻炉等级=4}] ~~~ scoreboard players set @s blue_gold_time 2
#黄家金生成
scoreboard players add @s yellow_gold_time -1
execute @s[scores={yellow_gold_time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=..99}] Y_gold_count 8
execute @s[scores={yellow_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=8..,Y_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_yellow_invisible,tag=iron_point_yellow] ~~~ summon bedwars:dropped_gold_ingot ~~~
execute @s[scores={yellow_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.yellow_gold,scores={Y_gold_count=8..,Y_spawned_gold=..11}] ~~~ scoreboard players add @s Y_spawned_gold 1
execute @s[scores={yellow_gold_time=..0,黄锻炉等级=0}] ~~~ scoreboard players set @s yellow_gold_time 6
execute @s[scores={yellow_gold_time=..0,黄锻炉等级=1}] ~~~ scoreboard players set @s yellow_gold_time 5
execute @s[scores={yellow_gold_time=..0,黄锻炉等级=2}] ~~~ scoreboard players set @s yellow_gold_time 4
execute @s[scores={yellow_gold_time=..0,黄锻炉等级=3}] ~~~ scoreboard players set @s yellow_gold_time 3
execute @s[scores={yellow_gold_time=..0,黄锻炉等级=4}] ~~~ scoreboard players set @s yellow_gold_time 2
#绿家金生成
scoreboard players add @s green_gold_time -1
execute @s[scores={green_gold_time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=..99}] G_gold_count 8
execute @s[scores={green_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=8..,G_spawned_gold=..2}] ~~~ execute @e[type=bedwars:iron_point_green_invisible,tag=iron_point_green] ~~~ summon bedwars:dropped_gold_ingot ~~~
execute @s[scores={green_gold_time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.green_gold,scores={G_gold_count=8..,G_spawned_gold=..11}] ~~~ scoreboard players add @s G_spawned_gold 1
execute @s[scores={green_gold_time=..0,绿锻炉等级=0}] ~~~ scoreboard players set @s green_gold_time 6
execute @s[scores={green_gold_time=..0,绿锻炉等级=1}] ~~~ scoreboard players set @s green_gold_time 5
execute @s[scores={green_gold_time=..0,绿锻炉等级=2}] ~~~ scoreboard players set @s green_gold_time 4
execute @s[scores={green_gold_time=..0,绿锻炉等级=3}] ~~~ scoreboard players set @s green_gold_time 3
execute @s[scores={green_gold_time=..0,绿锻炉等级=4}] ~~~ scoreboard players set @s green_gold_time 2
#钻石生成
scoreboard players add @s 钻石time -1
execute @s[scores={钻石time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=..239}] diamond_count_1 30
execute @s[scores={钻石time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=..239}] diamond_count 30
execute @s[scores={钻石time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=..239}] diamond_count_3 30
execute @s[scores={钻石time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=..239}] diamond_count_4 30
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=30..,spawned_diam_1=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_1] ~~~ summon bedwars:dropped_diamond ~~~
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_1,scores={diamond_count_1=30..,spawned_diam_1=..7}] ~~~ scoreboard players add @s spawned_diam_1 1
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=30..,spawned_diam_2=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point] ~~~ summon bedwars:dropped_diamond ~~~
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_2,scores={diamond_count_2=30..,spawned_diam_2=..7}] ~~~ scoreboard players add @s spawned_diam 1
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=30..,spawned_diam_3=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_3] ~~~ summon bedwars:dropped_diamond ~~~
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_3,scores={diamond_count_3=30..,spawned_diam_3=..7}] ~~~ scoreboard players add @s spawned_diam_3 1
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..,spawned_diam_4=..3}] ~~~ execute @e[type=bedwars:diamond_point_revolve,tag=diamond_point_4] ~~~ summon bedwars:dropped_diamond ~~~
execute @s[scores={钻石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.diamond_4,scores={diamond_count_4=30..,spawned_diam_4=..7}] ~~~ scoreboard players add @s spawned_diam_4 1
execute @s[scores={钻石time=..0}] ~~~ execute @a[tag=on_diamond_block] ~~~ function ore_get/diamond/assign
execute @s[scores={钻石time=..0,钻石等级=1}] ~~~ scoreboard players set @s 钻石time 35
execute @s[scores={钻石time=..0,钻石等级=2}] ~~~ scoreboard players set @s 钻石time 20
execute @s[scores={钻石time=..0,钻石等级=3}] ~~~ scoreboard players set @s 钻石time 15
#绿宝石生成
scoreboard players add @s 绿宝石time -1
execute @s[scores={绿宝石time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=..321}] emerald_count_1 80
execute @s[scores={绿宝石time=..0}] ~~~ scoreboard players add @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_2=..321}] emerald_count_2 80
execute @s[scores={绿宝石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=80..,spawned_emer_1=..2}] ~~~ execute @e[type=bedwars:emerald_point_revolve,tag=emerald_point_1] ~~~ summon bedwars:dropped_emerald ~~~
execute @s[scores={绿宝石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_1=80..,spawned_emer_1=..2}] ~~~ scoreboard players add @s spawned_emer_1 1
execute @s[scores={绿宝石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_2=80..,spawned_emer_2=..2}] ~~~ execute @e[type=bedwars:emerald_point_revolve,tag=emerald_point_2] ~~~ summon bedwars:dropped_emerald ~~~
execute @s[scores={绿宝石time=..0}] ~~~ execute @e[type=armor_stand,name=spawn.emerald,scores={emerald_count_2=80..,spawned_emer_2=..2}] ~~~ scoreboard players add @s spawned_emer_2 1
execute @s[scores={绿宝石time=..0}] ~~~ execute @a[tag=on_emerald_block] ~~~ function ore_get/emerald/assign
execute @s[scores={绿宝石time=..0,绿宝石等级=1}] ~~~ scoreboard players set @s 绿宝石time 40
execute @s[scores={绿宝石time=..0,绿宝石等级=2}] ~~~ scoreboard players set @s 绿宝石time 30
execute @s[scores={绿宝石time=..0,绿宝石等级=3}] ~~~ scoreboard players set @s 绿宝石time 20