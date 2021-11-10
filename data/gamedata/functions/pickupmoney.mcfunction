tag @s add picker

execute anchored eyes as @e[type=item,tag=money,tag=pickable,nbt={Item:{id:"minecraft:warped_fungus_on_a_stick"}},distance=..1.5] run tag @s add pickup
scoreboard players operation @s money += @e[tag=pickup] money
execute if entity @e[tag=pickup] run clear @s white_dye
execute if entity @e[tag=pickup] run playsound minecraft:entity.item.pickup player @a ~ ~ ~ 0.3 1 0
clear @s minecraft:warped_fungus_on_a_stick{Tags:["clear"]}
execute as @e[tag=pickup] run data merge entity @s {PickupDelay:0}
tag @e[tag=pickup] remove pickable

tag @e remove pickup
tag @s remove picker