execute if data entity @s HandItems.[1].Count store result score @s cardid run data get entity @s HandItems.[1].tag.CustomModelData 1
execute if data entity @s ArmorItems.[3].Count store result score @s cardid run data get entity @s ArmorItems.[3].tag.CustomModelData 1
execute if entity @s[tag=classic] run scoreboard players set @s pack 0
execute if entity @s[tag=yuepunk] run scoreboard players set @s pack 1
execute if entity @s[tag=knights] run scoreboard players set @s pack 2
execute if entity @s[tag=constellations] run scoreboard players set @s pack 3
execute if entity @s[tag=potato] run scoreboard players set @s pack 4
execute if entity @s[tag=gods] run scoreboard players set @s pack 5