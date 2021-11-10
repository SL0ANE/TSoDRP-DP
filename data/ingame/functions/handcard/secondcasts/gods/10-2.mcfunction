execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recovering=3}] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add pass
execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] as @e[tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=123,limit=1] targetcode run tag @s add pass2
execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] as @e[tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=123,limit=1] targetcode run tag @s add forceattack
execute if score @s cardcasting2 matches 18 run scoreboard players add @e[tag=pass2] attacktime 1
execute if score @s cardcasting2 matches 18 run scoreboard players add @e[tag=pass2] attacked 1

execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0
tag @e remove pass
tag @e remove pass2
tag @s remove 123