execute as @s[scores={recover=-1}] unless score @s dying matches 1.. run scoreboard players set @s dying 147
execute as @s[tag=mascot,scores={recover=-1}] run scoreboard players set @s hp 0
execute as @s[tag=environmentcaster] unless score @s dying matches 1.. run scoreboard players set @s dying 147
tag @s add dying