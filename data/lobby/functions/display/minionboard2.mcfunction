execute if score @s ownedby matches 1 if score @s minionboard matches 1 run tp @s -7 8.5 5
execute if score @s ownedby matches 1 if score @s minionboard matches 2 run tp @s -7 7.5 4
execute if score @s ownedby matches 1 if score @s minionboard matches 3 run tp @s -7 6.5 5

execute if score @s ownedby matches 2 if score @s minionboard matches 1 run tp @s -7 8.5 -9
execute if score @s ownedby matches 2 if score @s minionboard matches 2 run tp @s -7 7.5 -8
execute if score @s ownedby matches 2 if score @s minionboard matches 3 run tp @s -7 6.5 -9

execute as @s at @s run particle minecraft:dust 1 1 1 2 ~ ~ ~ 0.4 0.4 0.4 0 40 force