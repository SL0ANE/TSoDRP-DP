execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={dying=139}] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add pass
execute if score @s cardcasting2 matches 18 as @e[tag=pass] at @s positioned ~ ~4 ~ run function ingame:effect/jail_summon
execute if score @s cardcasting2 matches 18 run scoreboard players set @e[tag=summon3] recover 1
execute if score @s cardcasting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 0
execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] run kill @s
tag @e remove summon3
tag @e remove pass
tag @s remove 123
