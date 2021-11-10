tag @s add 123
execute as @e[tag=mascot,scores={recover=-1,dmgtaking=3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if entity @e[tag=pass] run tag @s add potentialtrap
tag @e remove pass
tag @s remove 123