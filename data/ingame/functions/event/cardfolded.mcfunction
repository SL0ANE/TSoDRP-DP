tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s roundfoldcard 1
tag @s remove 123
scoreboard players reset @s folding
tag @s remove folding