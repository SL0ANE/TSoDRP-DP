tag @s add running
execute as @e[tag=mascot1] if score @s playerid = @a[tag=running,limit=1] playerid run tag @s add running
execute if score system arena matches 1 run spreadplayers 58 -5 1 1 false @e[tag=running]
scoreboard players operation @s gameid = system gameid

tag @s add spectating
tag @s add ingame

tag @e remove running