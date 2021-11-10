tag @s add autocast
tag @s add autocast2


scoreboard players add @e[tag=drawer] drawtime 1

execute if score @s ownedby matches 1 if score system arena matches 1 run tp @s 67 28 -5 0 0
execute if score @s ownedby matches 2 if score system arena matches 1 run tp @s 67 28 -5 180 0
data merge entity @s {Pose:{Head:[0.0f,0.0f]}}
execute if data entity @s HandItems[1].Count run data modify entity @s ArmorItems[3] set from entity @s HandItems[1]
data modify entity @s HandItems[1] set value {}


scoreboard players set @s cardcasting 40

tag @e remove summon