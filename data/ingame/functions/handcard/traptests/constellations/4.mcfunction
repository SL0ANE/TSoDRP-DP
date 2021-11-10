tag @s add 123
execute as @e[tag=character] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute as @e[tag=character,scores={recover=-1,dmgtaking=3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if entity @e[tag=pass] run tag @s add potentialtrap
tag @e remove target
tag @e remove pass
tag @s remove 123