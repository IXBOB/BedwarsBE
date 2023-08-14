#地图不可选择
structure load bedwars:lobby_map1_lock_sign -202 201 -206
structure load bedwars:lobby_map2_lock_sign -202 201 -206
structure load bedwars:lobby_map3_lock_sign -202 201 -206
structure load bedwars:lobby_map4_lock_sign -202 201 -206
#游戏模式不可选择
execute @s[scores={"游戏模式"=1}] ~~~ structure load bedwars:lobby_mode1_lock_sign -202 200 -206
execute @s[scores={"游戏模式"=2}] ~~~ structure load bedwars:lobby_mode2_lock_sign -202 200 -206