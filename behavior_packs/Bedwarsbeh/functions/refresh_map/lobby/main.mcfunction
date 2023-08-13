#重置结束后后复制地图选择告示牌
#复制大厅不可选择告示牌
structure load bedwars:lobby_map1_lock_sign -203 200 -197
structure load bedwars:lobby_map2_lock_sign -203 200 -197
structure load bedwars:lobby_map3_lock_sign -203 200 -197
structure load bedwars:lobby_map4_lock_sign -203 200 -197
#重置结束后后复制游戏模式告示牌
#复制大厅不可选择告示牌
execute @s[scores={"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -202 200 -197
execute @s[scores={"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -202 200 -197