scoreboard objectives add 牌已重置 dummy
scoreboard objectives add 实已重置 dummy
scoreboard objectives add 箱已重置 dummy
scoreboard objectives add 等已重置 dummy
scoreboard objectives add help_page2_time dummy
scoreboard objectives add help_uid_cache dummy
scoreboard objectives add team_id dummy
scoreboard objectives add assign_team_id dummy
scoreboard objectives add own_particle_3 dummy
scoreboard objectives add own_particle_4 dummy
scoreboard objectives add own_particle_5 dummy
scoreboard objectives add buying_particle dummy
scoreboard objectives remove R_spawned_iron_1
scoreboard objectives remove R_spawned_iron_2
scoreboard objectives remove R_spawned_iron_3
scoreboard objectives remove B_spawned_iron_1
scoreboard objectives remove B_spawned_iron_2
scoreboard objectives remove B_spawned_iron_3
scoreboard objectives remove Y_spawned_iron_1
scoreboard objectives remove Y_spawned_iron_2
scoreboard objectives remove Y_spawned_iron_3
scoreboard objectives remove G_spawned_iron_1
scoreboard objectives remove G_spawned_iron_2
scoreboard objectives remove G_spawned_iron_3
scoreboard objectives add R_spawned_iron dummy
scoreboard objectives add B_spawned_iron dummy
scoreboard objectives add Y_spawned_iron dummy
scoreboard objectives add G_spawned_iron dummy
scoreboard objectives remove R_iron_count_1
scoreboard objectives remove R_iron_count_2
scoreboard objectives remove R_iron_count_3
scoreboard objectives remove B_iron_count_1
scoreboard objectives remove B_iron_count_2
scoreboard objectives remove B_iron_count_3
scoreboard objectives remove Y_iron_count_1
scoreboard objectives remove Y_iron_count_2
scoreboard objectives remove Y_iron_count_3
scoreboard objectives remove G_iron_count_1
scoreboard objectives remove G_iron_count_2
scoreboard objectives remove G_iron_count_3
scoreboard objectives add R_iron_count dummy
scoreboard objectives add B_iron_count dummy
scoreboard objectives add Y_iron_count dummy
scoreboard objectives add G_iron_count dummy
scoreboard objectives add R_visi_enti_init dummy
scoreboard objectives add B_visi_enti_init dummy
scoreboard objectives add Y_visi_enti_init dummy
scoreboard objectives add G_visi_enti_init dummy
scoreboard objectives add someone_in_R dummy
scoreboard objectives add someone_in_B dummy
scoreboard objectives add someone_in_Y dummy
scoreboard objectives add someone_in_G dummy
scoreboard objectives add iron_spawn_rand dummy
scoreboard objectives add gold_spawn_rand dummy
scoreboard objectives add diam_spawn_rand dummy
scoreboard objectives add emer_spawn_rand dummy
execute @e[type=armor_stand,name=spawn.red_iron_2] ~~~ summon armor_stand spawn.red_iron
kill @e[name=spawn.red_iron_1]
kill @e[name=spawn.red_iron_2]
kill @e[name=spawn.red_iron_3]
execute @e[type=armor_stand,name=spawn.blue_iron_2] ~~~ summon armor_stand spawn.blue_iron
kill @e[name=spawn.blue_iron_1]
kill @e[name=spawn.blue_iron_2]
kill @e[name=spawn.blue_iron_3]
execute @e[type=armor_stand,name=spawn.yellow_iron_2] ~~~ summon armor_stand spawn.yellow_iron
kill @e[name=spawn.yellow_iron_1]
kill @e[name=spawn.yellow_iron_2]
kill @e[name=spawn.yellow_iron_3]
execute @e[type=armor_stand,name=spawn.green_iron_2] ~~~ summon armor_stand spawn.green_iron
kill @e[name=spawn.green_iron_1]
kill @e[name=spawn.green_iron_2]
kill @e[name=spawn.green_iron_3]
scoreboard objectives add 总需人数 dummy
scoreboard objectives add 还需人数 dummy
scoreboard objectives add 弓等级 dummy
scoreboard objectives add lobby_guide_num dummy
scoreboard objectives add guide_running dummy
scoreboard objectives add spawn_sum_cache dummy