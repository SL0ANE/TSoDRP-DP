execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundending=8}] if score @s ownedby = @e[tag=123,limit=1] ownedby run kill @s

tag @s remove 123
