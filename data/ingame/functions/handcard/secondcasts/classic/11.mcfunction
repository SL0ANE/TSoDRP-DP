execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundending=22}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] as @e[tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add target
execute if score @s cardcasting2 matches 18 as @e[tag=target] run function ingame:destroy
execute if score @s cardcasting2 matches 18 if entity @e[tag=target] at @e[tag=target] run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1

execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] run kill @s

tag @e remove pass
tag @s remove 123
tag @e remove target