tag @s add 999
execute as @e[tag=mascot1] if score @s playerid = @a[tag=999,limit=1] playerid run tag @s add 882
execute unless entity @e[tag=882] run function lobby:mascotchange
tag @s remove 999
tag @e remove 882