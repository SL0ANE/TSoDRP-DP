tag @s add 123
execute as @e[tag=minion]
execute if entity @e[tag=pass] run scoreboard players set @s dying 147
tag @s remove 123
tag @e remove pass