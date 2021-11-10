tag @s add 123
scoreboard players reset @s winrate
scoreboard players reset @s win
scoreboard players reset @s lose
scoreboard players reset @s gamedraw
scoreboard players reset @s gameplayed
scoreboard players set @s scores 0
execute as @e[tag=reportholder] if score @s playerid = @e[tag=123,limit=1] playerid run kill @s
scoreboard players reset @s playerid
tag @s remove 123