execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add target
execute if score @s cardcasting2 matches 18 as @e[tag=target] at @s positioned ~ ~4 ~ run function ingame:effect/healer_summon
execute if score @s cardcasting2 matches 18 run scoreboard players operation @e[tag=summon3] healtaken += @e[tag=target] hplimit



execute if score @s cardcasting2 matches 18 as @e[tag=target] at @s run particle minecraft:dust 0.1 1 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s cardcasting2 matches 18 run kill @s
tag @e remove target
tag @e remove summon3
tag @s remove 123


