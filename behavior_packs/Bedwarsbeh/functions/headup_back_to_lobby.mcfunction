#观战玩家抬头返回
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=90,rxm=-89,scores={able_to_respawn=0,"出局观战"=1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={able_to_respawn=!0,"分队"=1..4,"存活"=1,"出局观战"=!1}] ~~~ scoreboard players reset @s "抬头返回time"
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,rx=-89,rxm=-90,scores={able_to_respawn=0,"出局观战"=1}] ~~~ scoreboard players add @s "抬头返回time" -1
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={"抬头返回time"=..-130,able_to_respawn=0,"出局观战"=1}] ~~~ function spectator_headup_back_to_lobby
#抬头返回title
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={"抬头返回time"=-30..-10,able_to_respawn=0,"出局观战"=1}] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_5s"} ] }
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={"抬头返回time"=-50..-31,able_to_respawn=0,"出局观战"=1}] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_4s"} ] }
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={"抬头返回time"=-70..-51,able_to_respawn=0,"出局观战"=1}] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_3s"} ] }
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={"抬头返回time"=-90..-71,able_to_respawn=0,"出局观战"=1}] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_2s"} ] }
execute @a[x=-63,y=80,z=-63,dx=127,dy=200,dz=127,scores={"抬头返回time"=-110..-91,able_to_respawn=0,"出局观战"=1}] ~~~ titleraw @s actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_1s"} ] }