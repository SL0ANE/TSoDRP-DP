
execute if score @s ownedby matches 1 if entity @e[tag=card,scores={cardorder=1..,ownedby=1}] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 101
execute if score @s ownedby matches 1 unless entity @e[tag=card,scores={cardorder=1..,ownedby=1}] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 103

execute if score @s ownedby matches 2 if entity @e[tag=card,scores={cardorder=1..,ownedby=2}] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 101
execute if score @s ownedby matches 2 unless entity @e[tag=card,scores={cardorder=1..,ownedby=2}] run data modify entity @s ArmorItems.[3].tag.CustomModelData set value 103