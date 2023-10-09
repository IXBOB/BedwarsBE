scoreboard objectives add "milk" dummy "魔法牛奶"
scoreboard players add @a "milk" 0
scoreboard players remove @a[scores={milk=1..}] "milk" 1
execute @s[scores={red_trap_sum=1..3}] ~~~ function test_red_team_trap_triggered
execute @s[scores={blue_trap_sum=1..3}] ~~~ function test_blue_team_trap_triggered
execute @s[scores={yellow_trap_sum=1..3}] ~~~ function test_yellow_team_trap_triggered
execute @s[scores={green_trap_sum=1..3}] ~~~ function test_green_team_trap_triggered