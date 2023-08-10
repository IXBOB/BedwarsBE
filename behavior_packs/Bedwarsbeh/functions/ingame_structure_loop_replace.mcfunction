#重复复制红队商店
structure load bedwars:shop_sign1 -4 185 48 0_degrees none
structure load bedwars:shop_sign2 4 185 48 0_degrees none
#重复复制蓝队商店
structure load bedwars:shop_sign1 48 185 4 90_degrees xz
structure load bedwars:shop_sign2 48 185 -4 90_degrees xz
#重复复制黄队商店
structure load bedwars:shop_sign1 4 185 -57 0_degrees xz
structure load bedwars:shop_sign2 -4 185 -57 0_degrees xz
#重复复制绿队商店
structure load bedwars:shop_sign1 -57 185 -4 90_degrees none
structure load bedwars:shop_sign2 -57 185 4 90_degrees none
#复制红队团队升级告示牌
execute @s[scores={red_trap_sum=1}] ~~~ function structure/shop_trap_slot_left_2_sign_red
execute @s[scores={red_trap_sum=2}] ~~~ function structure/shop_trap_slot_left_1_sign_red
execute @s[scores={red_trap_sum=3}] ~~~ function structure/shop_trap_slot_left_0_sign_red
execute @s[scores={"红急迫等级"=1}] ~~~ structure load bedwars:maniac_miner_i_sign 4 185 54 0_degrees
execute @s[scores={"红急迫等级"=2}] ~~~ structure load bedwars:maniac_miner_ii_sign 4 185 54 0_degrees
execute @s[scores={"红锋利等级"=1}] ~~~ structure load bedwars:sharpness_i_sign 4 185 55 0_degrees
execute @s[scores={"红保护等级"=1}] ~~~ structure load bedwars:protection_i_sign 4 185 56 0_degrees
execute @s[scores={"红保护等级"=2}] ~~~ structure load bedwars:protection_ii_sign 4 185 56 0_degrees
execute @s[scores={"红保护等级"=3}] ~~~ structure load bedwars:protection_iii_sign 4 185 56 0_degrees
execute @s[scores={"红保护等级"=4}] ~~~ structure load bedwars:protection_iv_sign 4 185 56 0_degrees
execute @s[scores={"红锻炉等级"=1}] ~~~ structure load bedwars:forge_i_sign 4 185 57 0_degrees
execute @s[scores={"红锻炉等级"=2}] ~~~ structure load bedwars:forge_ii_sign 4 185 57 0_degrees
execute @s[scores={"红锻炉等级"=3}] ~~~ structure load bedwars:forge_iii_sign 4 185 57 0_degrees
execute @s[scores={"红锻炉等级"=4}] ~~~ structure load bedwars:forge_iv_sign 4 185 57 0_degrees
#复制蓝队团队升级告示牌
execute @s[scores={blue_trap_sum=1}] ~~~ function structure/shop_trap_slot_left_2_sign_blue
execute @s[scores={blue_trap_sum=2}] ~~~ function structure/shop_trap_slot_left_1_sign_blue
execute @s[scores={blue_trap_sum=3}] ~~~ function structure/shop_trap_slot_left_0_sign_blue
execute @s[scores={"蓝急迫等级"=1}] ~~~ structure load bedwars:maniac_miner_i_sign -4 185 -54 180_degrees
execute @s[scores={"蓝急迫等级"=2}] ~~~ structure load bedwars:maniac_miner_ii_sign -4 185 -54 180_degrees
execute @s[scores={"蓝锋利等级"=1}] ~~~ structure load bedwars:sharpness_i_sign -4 185 -55 180_degrees
execute @s[scores={"蓝保护等级"=1}] ~~~ structure load bedwars:protection_i_sign -4 185 -56 180_degrees
execute @s[scores={"蓝保护等级"=2}] ~~~ structure load bedwars:protection_ii_sign -4 185 -56 180_degrees
execute @s[scores={"蓝保护等级"=3}] ~~~ structure load bedwars:protection_iii_sign -4 185 -56 180_degrees
execute @s[scores={"蓝保护等级"=4}] ~~~ structure load bedwars:protection_iv_sign -4 185 -56 180_degrees
execute @s[scores={"蓝锻炉等级"=1}] ~~~ structure load bedwars:forge_i_sign -4 185 -57 180_degrees
execute @s[scores={"蓝锻炉等级"=2}] ~~~ structure load bedwars:forge_ii_sign -4 185 -57 180_degrees
execute @s[scores={"蓝锻炉等级"=3}] ~~~ structure load bedwars:forge_iii_sign -4 185 -57 180_degrees
execute @s[scores={"蓝锻炉等级"=4}] ~~~ structure load bedwars:forge_iv_sign -4 185 -57 180_degrees
#复制黄队团队升级告示牌
execute @s[scores={yellow_trap_sum=1}] ~~~ function structure/shop_trap_slot_left_2_sign_yellow
execute @s[scores={yellow_trap_sum=2}] ~~~ function structure/shop_trap_slot_left_1_sign_yellow
execute @s[scores={yellow_trap_sum=3}] ~~~ function structure/shop_trap_slot_left_0_sign_yellow
execute @s[scores={"黄急迫等级"=1}] ~~~ structure load bedwars:maniac_miner_i_sign 54 185 -4 270_degrees
execute @s[scores={"黄急迫等级"=2}] ~~~ structure load bedwars:maniac_miner_ii_sign 54 185 -4 270_degrees
execute @s[scores={"黄锋利等级"=1}] ~~~ structure load bedwars:sharpness_i_sign 55 185 -4 270_degrees
execute @s[scores={"黄保护等级"=1}] ~~~ structure load bedwars:protection_i_sign 56 185 -4 270_degrees
execute @s[scores={"黄保护等级"=2}] ~~~ structure load bedwars:protection_ii_sign 56 185 -4 270_degrees
execute @s[scores={"黄保护等级"=3}] ~~~ structure load bedwars:protection_iii_sign 56 185 -4 270_degrees
execute @s[scores={"黄保护等级"=4}] ~~~ structure load bedwars:protection_iv_sign 56 185 -4 270_degrees
execute @s[scores={"黄锻炉等级"=1}] ~~~ structure load bedwars:forge_i_sign 57 185 -4 270_degrees
execute @s[scores={"黄锻炉等级"=2}] ~~~ structure load bedwars:forge_ii_sign 57 185 -4 270_degrees
execute @s[scores={"黄锻炉等级"=3}] ~~~ structure load bedwars:forge_iii_sign 57 185 -4 270_degrees
execute @s[scores={"黄锻炉等级"=4}] ~~~ structure load bedwars:forge_iv_sign 57 185 -4 270_degrees
#复制绿队团队升级告示牌
execute @s[scores={green_trap_sum=1}] ~~~ function structure/shop_trap_slot_left_2_sign_green
execute @s[scores={green_trap_sum=2}] ~~~ function structure/shop_trap_slot_left_1_sign_green
execute @s[scores={green_trap_sum=3}] ~~~ function structure/shop_trap_slot_left_0_sign_green
execute @s[scores={"绿急迫等级"=1}] ~~~ structure load bedwars:maniac_miner_i_sign -54 185 4 90_degrees
execute @s[scores={"绿急迫等级"=2}] ~~~ structure load bedwars:maniac_miner_ii_sign -54 185 4 90_degrees
execute @s[scores={"绿锋利等级"=1}] ~~~ structure load bedwars:sharpness_i_sign -55 185 4 90_degrees
execute @s[scores={"绿保护等级"=1}] ~~~ structure load bedwars:protection_i_sign -56 185 4 90_degrees
execute @s[scores={"绿保护等级"=2}] ~~~ structure load bedwars:protection_ii_sign -56 185 4 90_degrees
execute @s[scores={"绿保护等级"=3}] ~~~ structure load bedwars:protection_iii_sign -56 185 4 90_degrees
execute @s[scores={"绿保护等级"=4}] ~~~ structure load bedwars:protection_iv_sign -56 185 4 90_degrees
execute @s[scores={"绿锻炉等级"=1}] ~~~ structure load bedwars:forge_i_sign -57 185 4 90_degrees
execute @s[scores={"绿锻炉等级"=2}] ~~~ structure load bedwars:forge_ii_sign -57 185 4 90_degrees
execute @s[scores={"绿锻炉等级"=3}] ~~~ structure load bedwars:forge_iii_sign -57 185 4 90_degrees
execute @s[scores={"绿锻炉等级"=4}] ~~~ structure load bedwars:forge_iv_sign -57 185 4 90_degrees