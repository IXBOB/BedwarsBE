scoreboard players add @s "等级" 1
tellraw @s { "rawtext" : [{"translate":"text.tellraw.others.level_up_line1"},{"text":"\n"},{"translate":"text.tellraw.others.level_up_line2","with":{"rawtext":[{"score":{"name":"@s","objective":"等级"}}]}} ] }
scoreboard players operation @s "等级经验" -= @e[name=main] exp_lv_up_need