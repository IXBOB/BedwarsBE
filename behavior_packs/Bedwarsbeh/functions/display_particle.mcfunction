#无需硬币
#绿色粒子
execute @s[scores={select_particle=1}] ~~~ particle minecraft:villager_happy ~ ~0.2 ~
#火焰
execute @s[scores={select_particle=2}] ~~~ particle minecraft:basic_flame_particle ~ ~0.2 ~

#需要硬币购买
#爱心
execute @s[scores={select_particle=3}] ~~~ particle minecraft:heart_particle ~ ~0.1 ~
#红石激活
execute @s[scores={select_particle=4}] ~~~ particle minecraft:redstone_wire_dust_particle ~ ~0.2 ~
#灵魂
execute @s[scores={select_particle=5}] ~~~ particle minecraft:blue_flame_particle ~ ~0.5 ~
execute @s[scores={select_particle=5}] ~~~ particle minecraft:falling_dust_top_snow_particle ~ ~0.7 ~

