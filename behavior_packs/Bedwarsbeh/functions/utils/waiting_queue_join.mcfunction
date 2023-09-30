tag @s add waiting
scoreboard players set @e[type=armor_stand,name=main] "大厅人数" 0
execute @e[type=player,tag=waiting] ~~~ scoreboard players add @e[type=armor_stand,scores={gameSTART=0},tag=reset_OK] "大厅人数" 2
tp @s 0 240 0
function set_gameSTART0_waiting_scoreboard
replaceitem entity @s slot.hotbar 8 bedwars:waiting_back_to_hub 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=op] slot.hotbar 4 bedwars:waiting_force_all_players_join 1 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}