tag @e remove running
tag @e remove higher
tag @s add running
execute as @e[tag=target,scores={recover=-1}] if score @s attack > @e[tag=running,limit=1] attack run tag @s add higher
execute unless entity @e[tag=higher] run tag @s add highest
execute as @e[tag=higher,sort=random,limit=1] run function ingame:ma/yase2
tag @s remove running