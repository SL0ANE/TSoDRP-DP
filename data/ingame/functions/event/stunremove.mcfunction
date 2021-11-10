scoreboard players remove @s stun 1

execute if score @s stun matches 0 run tag @s remove stun
execute if score @s stun matches 0 run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.1 0.1 0.1 0 10 force
execute if score @s stun matches 0 run playsound minecraft:block.conduit.activate block @a[tag=ingame] ~ ~ ~ 1 2 1
function ingame:minion/hpcheck