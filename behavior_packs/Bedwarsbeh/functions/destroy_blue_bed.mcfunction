execute @s ~~~ detect 0 185 -47 air 0 title @a[scores={"分队"=2}] title §c§l床被破坏
execute @s ~~~ detect 0 185 -47 air 0 title @a[scores={"分队"=2}] subtitle you will no longer respawn
execute @s ~~~ detect 0 185 -47 air 0 playsound mob.enderdragon.growl @a[scores={"分队"=1}]
execute @s ~~~ detect 0 185 -47 air 0 playsound mob.wither.death @a[scores={"分队"=2}]
execute @s[scores={desbed_tell_num=1}] ~~~ detect 0 185 -47 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §b§lblue bed §fwas memed by: §c" },{ "selector" :  "@e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=2}] ~~~ detect 0 185 -47 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §b§lblue bed §fwas deep fried by: §c" },{ "selector" :  "@e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=3}] ~~~ detect 0 185 -47 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §b§lblue bed §fwas incinerated by: §c" },{ "selector" :  "@e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=4}] ~~~ detect 0 185 -47 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §b§lblue bed §fwas destroyed by: §c" },{ "selector" :  "@e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=5}] ~~~ detect 0 185 -47 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §b§lblue bed §fwas smashed by: §c" },{ "selector" :  "@e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}]" },{ "text" : "\n§r" }]}
execute @s ~~~ detect 0 185 -47 air 0 tag @e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}] add get.xp.desbed
execute @s ~~~ detect 0 185 -47 air 0 tag @e[type=player,x=0,y=185,z=-47,r=10,c=1,scores={分队=1}] add get.coin.desbed
execute @s ~~~ detect 0 185 -47 air 0 function get_xp_and_coin
execute @s ~~~ detect 0 185 -47 air 0 scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "蓝床存活" 0