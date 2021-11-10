tag @s add running
execute as @e[tag=mascot1] if score @s playerid = @a[tag=running,limit=1] playerid run tag @s add running
scoreboard players reset @s gameid
tag @s remove spectating
tag @s remove ingame
spreadplayers -203 30 2 2 under 26 false @e[tag=running]
title @s actionbar {"text":"你已返回大厅","bold":true,"color":"yellow"}
playsound minecraft:block.note_block.bell block @s ~ ~ ~ 3 0.675 1
bossbar remove minecraft:roundtime
tag @e remove running