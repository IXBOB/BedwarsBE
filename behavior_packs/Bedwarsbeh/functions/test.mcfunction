scoreboard objectives remove 红已重置
scoreboard objectives remove 蓝已重置
scoreboard objectives remove 黄已重置
scoreboard objectives remove 绿已重置
scoreboard objectives add 基已重置 dummy
scoreboard players set @e[type=armor_stand,name=main] "基已重置" 0
scoreboard objectives remove own_level
scoreboard objectives add own_xp dummy