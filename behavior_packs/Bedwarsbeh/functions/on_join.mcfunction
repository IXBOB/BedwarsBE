scoreboard players add @a joined 0

#玩家加入时执行命令
execute @a[scores={joined=0}] ~~~ function on_join_command

scoreboard players reset * joined
scoreboard players set @a joined 1