#检测玩家获得tag后给盔甲架对应tag
execute @a[tag=op,tag=set.start.players.2] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.2] ~~~ tag @s add set.start.players.2
execute @a[tag=op,tag=set.start.players.2] ~~~ tag @s remove set.start.players.2
execute @a[tag=op,tag=set.start.players.3] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.3] ~~~ tag @s add set.start.players.3
execute @a[tag=op,tag=set.start.players.3] ~~~ tag @s remove set.start.players.3
execute @a[tag=op,tag=set.start.players.4] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.4] ~~~ tag @s add set.start.players.4
execute @a[tag=op,tag=set.start.players.4] ~~~ tag @s remove set.start.players.4
execute @a[tag=op,tag=set.start.players.5] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.5] ~~~ tag @s add set.start.players.5
execute @a[tag=op,tag=set.start.players.5] ~~~ tag @s remove set.start.players.5
execute @a[tag=op,tag=set.start.players.6] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.6] ~~~ tag @s add set.start.players.6
execute @a[tag=op,tag=set.start.players.6] ~~~ tag @s remove set.start.players.6
execute @a[tag=op,tag=set.start.players.7] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.7] ~~~ tag @s add set.start.players.7
execute @a[tag=op,tag=set.start.players.7] ~~~ tag @s remove set.start.players.7
execute @a[tag=op,tag=set.start.players.8] ~~~ execute @e[type=armor_stand,name=main,scores={gameSTART=0},tag=!set.start.players.8] ~~~ tag @s add set.start.players.8
execute @a[tag=op,tag=set.start.players.8] ~~~ tag @s remove set.start.players.8
#检测管理员调整开始人数(给予盔甲架tag后自动删除其他矛盾的tag)
#拥有tag set.start.players.2 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.2,tag=!have.set.start.players.2] ~~~ function commands/test_tag/set.start.players.2
#拥有tag set.start.players.3 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.3,tag=!have.set.start.players.3] ~~~ function commands/test_tag/set.start.players.3
#拥有tag set.start.players.4 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.4,tag=!have.set.start.players.4] ~~~ function commands/test_tag/set.start.players.4
#拥有tag set.start.players.5 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.5,tag=!have.set.start.players.5] ~~~ function commands/test_tag/set.start.players.5
#拥有tag set.start.players.6 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.6,tag=!have.set.start.players.6] ~~~ function commands/test_tag/set.start.players.6
#拥有tag set.start.players.7 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.7,tag=!have.set.start.players.7] ~~~ function commands/test_tag/set.start.players.7
#拥有tag set.start.players.8 时:
execute @e[type=armor_stand,name=main,tag=set.start.players.8,tag=!have.set.start.players.8] ~~~ function commands/test_tag/set.start.players.8