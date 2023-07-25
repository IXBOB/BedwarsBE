execute @e[type=armor_stand,name=main,scores={gameSTART=1}] ~~~ scoreboard players random @s RandomDamageUID 1 999999999
execute @e[type=armor_stand,name=main,scores={gameSTART=0}] ~~~ scoreboard players reset @s RandomDamageUID
execute @e[type=armor_stand,name=main,scores={gameSTART=2}] ~~~ scoreboard players reset @s RandomDamageUID