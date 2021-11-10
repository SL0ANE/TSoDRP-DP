execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 unless entity @e[tag=targetmascot] as @e[tag=mascot,scores={roundending=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s cardcasting2 1
execute if score @s cardcasting2 matches 18 as @e[tag=removed_by_kai] if score @s ownedby = @e[tag=targetmascot,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting2 matches 18 as @e[tag=pass] run function ingame:inserthand
execute if score @s cardcasting2 matches 18 as @e[tag=pass] run tag @s remove removed_by_kai
execute if score @s cardcasting2 matches 18 as @e[tag=pass,tag=exceeded] run kill @s
execute if score @s cardcasting2 matches 18 if entity @e[tag=targetmascot] run kill @s
execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0
tag @e remove pass
tag @e remove targetmascot
tag @s remove 123
