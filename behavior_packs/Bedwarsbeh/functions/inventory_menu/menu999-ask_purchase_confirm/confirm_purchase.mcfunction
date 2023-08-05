#require scoreboard value -> 需硬币数

scoreboard players operation @s 硬币数.cache = @s 硬币数
scoreboard players operation @s 硬币数.cache -= @s 需硬币数
tag @s[scores={硬币数.cache=0..}] add purchase_confirm_success
scoreboard players operation @s[tag=purchase_confirm_success] 硬币数 -= @s 需硬币数

#下面继续写购买成功后的操作(设置某个计分版值为 1)