scoreboard players add @s lobby_text_num 1
execute @s[scores={language=1}] ~~~ function summon_lobby_scroll_text/chinese
execute @s[scores={language=2}] ~~~ function summon_lobby_scroll_text/english
scoreboard players set @s[scores={lobby_text_num=9..}] lobby_text_num 0