tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target


execute unless entity @e[tag=target2] if entity @s[tag=minion1] as @e[tag=minion,scores={minioncode=1}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=minion2] as @e[tag=minion,scores={minioncode=2}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=minion3] as @e[tag=minion,scores={minioncode=3}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=minion4] as @e[tag=minion,scores={minioncode=4}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=minion5] as @e[tag=minion,scores={minioncode=5}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=minion6] as @e[tag=minion,scores={minioncode=6}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=mascot1] as @e[tag=mascot,scores={ownedby=1}] run tag @s add target2
execute unless entity @e[tag=target2] if entity @s[tag=mascot2] as @e[tag=mascot,scores={ownedby=2}] run tag @s add target2


execute facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.2
particle minecraft:soul_fire_flame ~ ~ ~ 0.15 0.15 0.15 0.001 4 force
execute if entity @e[tag=target,distance=..0.5] as @e[tag=target] run scoreboard players set @s[scores={recover=1..}] recover 0
execute if entity @e[tag=target,distance=..0.5] as @e[tag=target2] run function ingame:destroy
execute if entity @e[tag=target,distance=..0.5] run playsound minecraft:entity.elder_guardian.death block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if entity @e[tag=target,distance=..0.5] run kill @s
scoreboard players set system waiting 1

tag @e remove target2
tag @e remove target
tag @s remove 123