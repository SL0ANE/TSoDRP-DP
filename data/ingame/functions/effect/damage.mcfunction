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
particle dust 0.8 0.3 0.5 0.4 ~ ~ ~ 0.1 0.1 0.1 0 20 force
particle dust 0.6 0.1 0.1 0.4 ~ ~ ~ 0.1 0.1 0.1 0 20 force
execute as @e[tag=target,distance=..0.5] run scoreboard players operation @s dmgtaken += @e[tag=123] dmgtaken
execute as @e[tag=target,distance=..0.5] at @s run particle minecraft:item redstone_block ~ ~0.7 ~ 0.2 0.2 0.2 0.1 30 force
execute if entity @e[tag=target,distance=..0.5] if score @s dmgtaken matches 1.. run playsound minecraft:entity.zombie.attack_iron_door block @a[tag=ingame] ~ ~ ~ 2 1.4 1
execute if entity @e[tag=target,distance=..0.5] run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123