execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundstarting=6}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 0

execute if score @s cardcasting2 matches 18 as @e[tag=pass] run scoreboard players add @s roundcount 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] run kill @s
execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0

tag @e remove pass
tag @s remove 123

