tag @s add 123

particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute if score @s waiting matches 1.. run tp @s ^ ^ ^0.2
particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute if score @s waiting matches 1.. run tp @s ^ ^ ^0.2
particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute if score @s waiting matches 1.. run tp @s ^ ^ ^0.2
particle minecraft:crit ~ ~ ~ 0.05 0.05 0.05 0.1 2 force
particle minecraft:small_flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
execute if score @s waiting matches 1.. run tp @s ^ ^ ^0.2
execute positioned ~-2 ~2 ~-2 if entity @e[tag=centre,dx=3,dz=3,dy=0] run scoreboard players set @s waiting 1
execute if score @s waiting matches 1 run particle minecraft:lava ~ ~ ~ 0 0 0 0 7 force
execute if score @s waiting matches 1 run playsound minecraft:entity.blaze.shoot block @a[tag=ingame] ~ ~ ~ 0.8 0.1 1
execute if score @s waiting matches 1 run kill @s
scoreboard players set system waiting 1
tag @e remove target
tag @s remove 123