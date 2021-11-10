execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundstarting=19}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 0

execute if score @s cardcasting2 matches 18 if entity @e[tag=pass] as @e[tag=minion,scores={recover=-1}] run tag @s add target
execute if score @s cardcasting2 matches 18 at @e[tag=centre] run function ingame:effect/fire_summon
execute if score @s cardcasting2 matches 18 as @e[tag=target] run function ingame:effect/fire_tag
execute if score @s cardcasting2 matches 18 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=targetmascot] damage
execute if score @s cardcasting2 matches 18 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage

execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run particle minecraft:dust 0.1 0.4 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s cardcasting2 matches 18 run kill @s

tag @e remove targetmascot
tag @e remove summon3
tag @e remove pass
tag @e remove target
tag @s remove 123


