tag @s add 123
execute unless entity @e[tag=target] if score @s targetcode matches 1 as @e[tag=minion,scores={minioncode=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 2 as @e[tag=minion,scores={minioncode=2}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 3 as @e[tag=minion,scores={minioncode=3}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 4 as @e[tag=minion,scores={minioncode=4}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 5 as @e[tag=minion,scores={minioncode=5}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 6 as @e[tag=minion,scores={minioncode=6}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 7 as @e[tag=mascot,scores={ownedby=1}] run tag @s add target
execute unless entity @e[tag=target] if score @s targetcode matches 8 as @e[tag=mascot,scores={ownedby=2}] run tag @s add target

execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^ ^ ^ 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.1 ^ ^0.1 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.2 ^ ^0.2 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.3 ^ ^0.3 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.4 ^ ^0.4 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.5 ^ ^0.5 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.6 ^ ^0.6 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.7 ^ ^0.7 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.8 ^ ^0.8 0.07 0 0.07 0 10 force

execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.1 ^ ^0.1 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.2 ^ ^0.2 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.3 ^ ^0.3 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.4 ^ ^0.4 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.5 ^ ^0.5 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.6 ^ ^0.6 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.7 ^ ^0.7 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.8 ^ ^0.8 0.07 0 0.07 0 10 force

execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.1 ^ ^-0.1 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.2 ^ ^-0.2 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.3 ^ ^-0.3 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.4 ^ ^-0.4 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.5 ^ ^-0.5 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.6 ^ ^-0.6 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.7 ^ ^-0.7 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^0.8 ^ ^-0.8 0.07 0 0.07 0 10 force

execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.1 ^ ^-0.1 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.2 ^ ^-0.2 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.3 ^ ^-0.3 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.4 ^ ^-0.4 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.5 ^ ^-0.5 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.6 ^ ^-0.6 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.7 ^ ^-0.7 0.07 0 0.07 0 10 force
execute if score @s waiting matches 3 run particle minecraft:dust 1 0 0 1 ^-0.8 ^ ^-0.8 0.07 0 0.07 0 10 force


execute if score @s waiting matches 3 run stopsound @s * minecraft:block.beacon.activate
execute if score @s waiting matches 3 run playsound minecraft:item.trident.return block @a[tag=ingame] ~ ~ ~ 2 1.5 1
execute if score @s waiting matches 3 run playsound minecraft:entity.blaze.hurt block @a[tag=ingame] ~ ~ ~ 2 0.5 1
execute if score @s waiting matches 3 run playsound minecraft:entity.wither.hurt block @a[tag=ingame] ~ ~ ~ 2 0.1 1
execute if score @s waiting matches 3 as @e[tag=target] run function ingame:destroy
execute if score @s waiting matches 1 run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123