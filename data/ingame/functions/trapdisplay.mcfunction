tag @s add running
execute unless score @s trapcastorder matches 1.. run tag @s add set
execute if entity @s[tag=set] as @e[tag=trapcaster,tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add count
execute if entity @s[tag=set] store result score @s trapcastorder if entity @e[tag=count]
execute if entity @s[tag=set] run scoreboard players add @s trapcastorder 1

execute if data entity @s HandItems[1].Count run data modify entity @s ArmorItems[3] set from entity @s HandItems[1]
data modify entity @s HandItems[1] set value {}

execute if score system arena matches 1 run tp @s[scores={ownedby=2,trapcastorder=1}] 64.95 28.5 -7.2
execute if score system arena matches 1 run tp @s[scores={ownedby=2,trapcastorder=2}] 64.7 29.8 -7.45
execute if score system arena matches 1 run tp @s[scores={ownedby=2,trapcastorder=3}] 64.45 28.5 -7.7
execute if score system arena matches 1 run tp @s[scores={ownedby=2,trapcastorder=4}] 64.2 29.8 -7.95
execute if score system arena matches 1 run data merge entity @s[scores={ownedby=2,trapcastorder=1..4}] {Pose:{Head:[0.0f,-135.0f,0.0f]}}
execute if score system arena matches 1 run tp @s[scores={ownedby=1,trapcastorder=1}] 70.2 28.5 -1.95
execute if score system arena matches 1 run tp @s[scores={ownedby=1,trapcastorder=2}] 70.45 29.8 -1.7
execute if score system arena matches 1 run tp @s[scores={ownedby=1,trapcastorder=3}] 70.7 28.5 -1.45
execute if score system arena matches 1 run tp @s[scores={ownedby=1,trapcastorder=4}] 70.95 29.8 -1.2
execute if score system arena matches 1 run data merge entity @s[scores={ownedby=1,trapcastorder=1..4}] {Pose:{Head:[0.0f,45.0f,0.0f]}}

tag @s remove set
tag @s remove running
tag @e remove count