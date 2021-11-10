tag @s add 123
execute as @e[tag=mascot,tag=onturn,scores={usingcard=19}] run tag @s add pass
execute if entity @e[tag=pass] run tag @s add potentialtrap
tag @e remove pass
tag @s remove 123