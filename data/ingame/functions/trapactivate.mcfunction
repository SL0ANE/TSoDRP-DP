execute store result score temp number run data get entity @s Pose.Head.[1] 1
execute if score system arena matches 1 at @s run tp @s ^ ^ ^0.5
playsound minecraft:block.beacon.activate block @a[tag=ingame] ~ ~ ~ 3 1.4 1
title @a[tag=ingame] clear
title @a[tag=ingame] times 5 20 5
title @a[tag=ingame] title {"text":"陷阱被触发","color":"dark_green"}
scoreboard players add temp number 110
execute store result entity @s Pose.Head.[1] float 1 run scoreboard players get temp number
scoreboard players reset temp number