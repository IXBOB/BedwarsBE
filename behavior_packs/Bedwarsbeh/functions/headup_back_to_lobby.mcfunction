#观战玩家抬头返回
scoreboard players add @s "抬头返回time" -1
execute @s[scores={"抬头返回time"=..-111}] ~~~ function spectator_headup_back_to_lobby
#抬头返回title
titleraw @s[scores={"抬头返回time"=-30..-10}] actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_5s"} ] }
titleraw @s[scores={"抬头返回time"=-50..-31}] actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_4s"} ] }
titleraw @s[scores={"抬头返回time"=-70..-51}] actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_3s"} ] }
titleraw @s[scores={"抬头返回time"=-90..-71}] actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_2s"} ] }
titleraw @s[scores={"抬头返回time"=-110..-91}] actionbar { "rawtext" : [{"translate":"text.title.ingameinfo.spectator_headup_back_to_lobby_1s"} ] }