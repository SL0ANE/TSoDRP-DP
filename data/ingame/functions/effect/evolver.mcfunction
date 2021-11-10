tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target
execute facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.2



execute if entity @e[tag=target,distance=..0.5] run data modify entity @s ArmorItems[3] set from entity @s HandItems[0]
execute if entity @e[tag=target,distance=..0.5] run data modify entity @s HandItems[0] set value {}
execute if entity @e[tag=target,distance=..0.5] at @e[tag=target] run particle minecraft:smoke ~ ~1 ~ 0.4 0.4 0.4 0.01 300 force
execute if entity @e[tag=target,distance=..0.5] run playsound minecraft:entity.ender_dragon.flap block @a[tag=ingame] ~ ~ ~ 3 0.8 1
execute if entity @e[tag=target,distance=..0.5] run playsound minecraft:entity.zombie_villager.converted block @a[tag=ingame] ~ ~ ~ 3 1 1
execute if entity @e[tag=target,distance=..0.5] run tp @s @e[tag=target,limit=1]
execute if entity @e[tag=target,distance=..0.5] run scoreboard players operation @s minioncode = @e[tag=target] minioncode
execute if entity @e[tag=target,distance=..0.5] run scoreboard players operation @s minionboard = @e[tag=target] minionboard
execute if entity @e[tag=target,distance=..0.5] run tag @s remove effect
execute if entity @e[tag=target,distance=..0.5] run tag @s remove evolver
execute as @e[tag=target,distance=..0.5] run function ingame:minion/replace
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123