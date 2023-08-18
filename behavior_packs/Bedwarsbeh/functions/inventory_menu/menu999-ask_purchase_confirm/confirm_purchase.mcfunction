#require scoreboard value -> 需硬币数
scoreboard players operation @s 硬币数.cache = @s 硬币数
scoreboard players operation @s 硬币数.cache -= @s 需硬币数
tag @s[scores={硬币数.cache=0..}] add purchase_confirm_success
scoreboard players operation @s[tag=purchase_confirm_success] 硬币数 -= @s 需硬币数

#购买失败后的操作
execute @s[tag=!purchase_confirm_success] ~~~ replaceitem entity @s slot.inventory 12 bedwars:menu999_purchase_failed 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
execute @s[tag=!purchase_confirm_success] ~~~ playsound mob.endermen.portal @s
execute @s[tag=!purchase_confirm_success] ~~~ clear @s bedwars:menu999_purchase_confirm
#购买成功后的操作
#爱心粒子
execute @s[scores={buying_particle=3},tag=purchase_confirm_success] ~~~ scoreboard players set @s own_particle_3 1
execute @s[scores={buying_particle=3},tag=purchase_confirm_success] ~~~ scoreboard players set @s select_particle 3
#红石粒子
execute @s[scores={buying_particle=4},tag=purchase_confirm_success] ~~~ scoreboard players set @s own_particle_4 1
execute @s[scores={buying_particle=4},tag=purchase_confirm_success] ~~~ scoreboard players set @s select_particle 4
#灵魂粒子
execute @s[scores={buying_particle=5},tag=purchase_confirm_success] ~~~ scoreboard players set @s own_particle_5 1
execute @s[scores={buying_particle=5},tag=purchase_confirm_success] ~~~ scoreboard players set @s select_particle 5



execute @s[tag=purchase_confirm_success] ~~~ playsound note.pling @s ~~~ 1 2
execute @s[tag=purchase_confirm_success] ~~~ function inventory_menu/menu999-ask_purchase_confirm/back
tag @s remove purchase_confirm_success