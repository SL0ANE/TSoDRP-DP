execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recover=-1,hp=..2}] run tag @s add target
execute if score @s cardcasting2 matches 18 as @e[tag=target] at @s run function ingame:effect/kill_summon

execute if score @s cardcasting2 matches 18 as @e[tag=target] at @s run particle minecraft:dust 0.1 0.4 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run playsound minecraft:block.beacon.power_select block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s cardcasting2 matches 18 run kill @s
tag @e remove summon3
tag @e remove target
tag @s remove 123


