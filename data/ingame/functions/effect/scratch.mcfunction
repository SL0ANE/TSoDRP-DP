tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target

execute if score @s waiting matches 3 as @e[tag=target] run scoreboard players operation @s dmgtaken += @e[tag=123] dmgtaken
execute if score @s waiting matches 3 run particle minecraft:sweep_attack ~ ~0.3 ~ 0.1 0.1 0.1 0.1 20 force
execute if score @s waiting matches 3 run playsound minecraft:entity.zombie.attack_iron_door block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s waiting matches 3 run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123