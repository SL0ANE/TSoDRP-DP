tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target
execute at @s facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s run particle dust 0.2 0.8 0.2 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s run particle dust 0.5 0.9 0.5 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s run particle dust 0.2 0.8 0.2 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s run particle dust 0.5 0.9 0.5 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s run particle dust 0.2 0.8 0.2 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s run particle dust 0.5 0.9 0.5 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s run particle dust 0.2 0.8 0.2 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute at @s run particle dust 0.5 0.9 0.5 0.4 ~ ~ ~ 0.1 0.1 0.1 0 5 force
execute if score @s healtaken matches 1.. as @e[tag=target,distance=..0.5] run scoreboard players operation @s healtaken += @e[tag=123] healtaken
execute if score @s healtaken matches ..-1 as @e[tag=target,distance=..0.5] run scoreboard players operation @s hp -= @e[tag=123] healtaken
execute as @e[tag=target,distance=..0.5] at @s run particle dust 0.2 0.8 0.4 2 ~ ~ ~ 0.2 0.2 0.2 0 30 force
execute as @e[tag=target,distance=..0.5] at @s run playsound minecraft:block.bubble_column.upwards_inside block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if entity @e[tag=target,distance=..0.5] run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123