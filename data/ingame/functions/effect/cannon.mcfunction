tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target
execute at @s if score @s waiting matches 26.. facing entity @e[tag=target,limit=1] feet rotated ~ -30 run tp @s ^ ^ ^0.4


execute at @s if entity @e[tag=target,distance=..0.5] if score @s waiting matches 10..25 run scoreboard players set @s waiting 5
execute at @s if score @s waiting matches 10..25 facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s if entity @e[tag=target,distance=..0.5] if score @s waiting matches 10..25 run scoreboard players set @s waiting 5
execute at @s if score @s waiting matches 10..25 facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s if entity @e[tag=target,distance=..0.5] if score @s waiting matches 10..25 run scoreboard players set @s waiting 5
execute at @s if score @s waiting matches 10..25 facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1
execute at @s if entity @e[tag=target,distance=..0.5] if score @s waiting matches 10..25 run scoreboard players set @s waiting 5
execute at @s if score @s waiting matches 10..25 facing entity @e[tag=target,limit=1] feet run tp @s ^ ^ ^0.1


execute if score @s waiting matches 2 as @e[tag=target] run scoreboard players operation @s dmgtaken += @e[tag=123] dmgtaken
execute if score @s waiting matches 2 run particle minecraft:explosion ~ ~ ~ 0.4 0.4 0.4 0 3 force
execute if score @s waiting matches 2 run playsound minecraft:entity.generic.explode block @a[tag=ingame] ~ ~ ~ 2 0.7 1
execute if score @s waiting matches 2 run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123