tag @s[tag=!have_chosen_team] add choosing_team
execute @e[type=player,c=1] ~~~ execute @s[scores={"分队"=1}] ~~~ scoreboard players set @e[type=egg,tag=choosing_team] egg_team 1
execute @e[type=player,c=1] ~~~ execute @s[scores={"分队"=2}] ~~~ scoreboard players set @e[type=egg,tag=choosing_team] egg_team 2
execute @e[type=player,c=1] ~~~ execute @s[scores={"分队"=3}] ~~~ scoreboard players set @e[type=egg,tag=choosing_team] egg_team 3
execute @e[type=player,c=1] ~~~ execute @s[scores={"分队"=4}] ~~~ scoreboard players set @e[type=egg,tag=choosing_team] egg_team 4
tag @s add have_chosen_team
tag @s remove choosing_team
scoreboard players set @s "可生成路" 1
execute @s ~~~ detect ~ 0 ~1 deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~ 0 ~ deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~ 0 ~-1 deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~1 0 ~1 deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~1 0 ~ deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~1 0 ~-1 deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~-1 0 ~1 deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~-1 0 ~ deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~-1 0 ~-1 deny 0 scoreboard players set @s "可生成路" 0
execute @s ~~~ detect ~ ~ ~ structure_void 0 scoreboard players set @s "可生成路" 0
execute @s[scores={egg_team=1,"可生成路"=1}] ~~~ fill ~0.3 ~-2 ~0.5 ~-0.4 ~-2 ~-0.4 bedwars:player_red_wool 0 replace air
execute @s[scores={egg_team=2,"可生成路"=1}] ~~~ fill ~0.3 ~-2 ~0.5 ~-0.4 ~-2 ~-0.4 bedwars:player_blue_wool 0 replace air
execute @s[scores={egg_team=3,"可生成路"=1}] ~~~ fill ~0.3 ~-2 ~0.5 ~-0.4 ~-2 ~-0.4 bedwars:player_yellow_wool 0 replace air
execute @s[scores={egg_team=4,"可生成路"=1}] ~~~ fill ~0.3 ~-2 ~0.5 ~-0.4 ~-2 ~-0.4 bedwars:player_green_wool 0 replace air
execute @s ~~~ playsound random.pop @a ~~~
#删除时间在animation中