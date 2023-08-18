#激活此function的在armor_stand实体文件中
#红铁生成
scoreboard players add @s 红铁time -1
execute @s[scores={红铁time=..0}] ~~~ function ore_spawner/test_spawn/iron/red/main
#蓝铁生成
scoreboard players add @s 蓝铁time -1
execute @s[scores={蓝铁time=..0}] ~~~ function ore_spawner/test_spawn/iron/blue/main
#黄铁生成
scoreboard players add @s 黄铁time -1
execute @s[scores={黄铁time=..0}] ~~~ function ore_spawner/test_spawn/iron/yellow/main
#绿铁生成
scoreboard players add @s 绿铁time -1
execute @s[scores={绿铁time=..0}] ~~~ function ore_spawner/test_spawn/iron/green/main
#红家金生成
scoreboard players add @s red_gold_time -1
execute @s[scores={red_gold_time=..0}] ~~~ function ore_spawner/test_spawn/gold/red/main
#蓝家金生成
scoreboard players add @s blue_gold_time -1
execute @s[scores={blue_gold_time=..0}] ~~~ function ore_spawner/test_spawn/gold/blue/main
#黄家金生成
scoreboard players add @s yellow_gold_time -1
execute @s[scores={yellow_gold_time=..0}] ~~~ function ore_spawner/test_spawn/gold/yellow/main
#绿家金生成
scoreboard players add @s green_gold_time -1
execute @s[scores={green_gold_time=..0}] ~~~ function ore_spawner/test_spawn/gold/green/main
#钻石生成
scoreboard players add @s 钻石time -1
execute @s[scores={钻石time=..0}] ~~~ function ore_spawner/test_spawn/diamond/main
#绿宝石生成
scoreboard players add @s 绿宝石time -1
execute @s[scores={绿宝石time=..0}] ~~~ function ore_spawner/test_spawn/emerald/main