tag @s add 123
execute as @e[tag=deck] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add 234
execute unless entity @e[tag=234,distance=..1] run tp @s ~ ~-0.5 ~
execute if entity @e[tag=234,distance=..1] run tp @s @e[tag=234,limit=1]
tag @s remove 123
tag @e remove 234