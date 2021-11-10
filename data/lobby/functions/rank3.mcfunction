tag @e remove check
tag @e remove higher
tag @s add check
execute as @s[tag=check] as @e[tag=reportholder,tag=!ranked] if score @s scores > @e[tag=check,limit=1] scores run tag @s add higher
execute as @s[tag=check] unless entity @e[tag=3rd] as @e[limit=1,tag=higher] run function lobby:rank3
execute as @s[tag=check] unless entity @e[tag=higher] run tag @s add 3rd
execute as @s[tag=check] unless entity @e[tag=higher] run tag @s add ranked
tag @e remove check
tag @e remove higher