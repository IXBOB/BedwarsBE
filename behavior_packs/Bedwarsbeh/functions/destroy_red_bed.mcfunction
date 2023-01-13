execute @s ~~~ detect 0 185 46 air 0 title @a[scores={"分队"=1}] title §c§l床被破坏
execute @s ~~~ detect 0 185 46 air 0 title @a[scores={"分队"=1}] subtitle §cyou will no longer respawn
execute @s ~~~ detect 0 185 46 air 0 playsound mob.enderdragon.growl @a[scores={"分队"=2}]
execute @s ~~~ detect 0 185 46 air 0 playsound mob.wither.death @a[scores={"分队"=1}]
execute @s[scores={desbed_tell_num=1}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§lred bed §fwas destroyed by: §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=2}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§lred bed §fwas incinerated by: §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=3}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§lred bed §fwas memed by: §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=4}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§lred bed §fwas deep fried  by : §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s[scores={desbed_tell_num=5}] ~~~ detect 0 185 46 air 0 tellraw @a { "rawtext" : [{ "text" : "\n§f§l床被破坏了 >> §c§lred bed §fwas smashed by: §b" },{ "selector" :  "@e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}]" },{ "text" : "\n§r" }]}
execute @s ~~~ detect 0 185 46 air 0 tag @e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}] add get.xp.desbed
execute @s ~~~ detect 0 185 46 air 0 tag @e[type=player,x=0,y=185,z=46,r=10,c=1,scores={分队=2}] add get.coin.desbed
execute @s ~~~ detect 0 185 46 air 0 function get_xp_and_coin
execute @s ~~~ detect 0 185 46 air 0 scoreboard players set @e[type=armor_stand,name=main,scores={gameSTART=1}] "红床存活" 0