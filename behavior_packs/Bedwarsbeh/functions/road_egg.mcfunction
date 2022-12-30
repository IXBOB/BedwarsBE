tag @s[tag=!have_choosed_team] add choosing_team
scoreboard players set @s[tag=!have_choosed_team] egg_time 22
scoreboard players add @s egg_time -1
execute @e[type=player,c=1] ~~~ execute @s[scores={"分队"=1}] ~~~ scoreboard players set @e[type=egg,tag=choosing_team] egg_team 1
execute @e[type=player,c=1] ~~~ execute @s[scores={"分队"=2}] ~~~ scoreboard players set @e[type=egg,tag=choosing_team] egg_team 2
tag @s add have_choosed_team
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
execute @s[scores={egg_team=1,"可生成路"=1}] ~~~ fill ~0.3 ~-2 ~0.5 ~-0.4 ~-2 ~-0.4 wool 14 replace air
execute @s[scores={egg_team=2,"可生成路"=1}] ~~~ fill ~0.3 ~-2 ~0.5 ~-0.4 ~-2 ~-0.4 wool 11 replace air
execute @s ~~~ playsound random.pop @a ~~~
execute @s[scores={egg_time=..0}] ~~~ kill @s