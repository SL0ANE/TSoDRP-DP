

playsound minecraft:item.trident.return block @a ~ ~ ~ 3 0.1 1
execute as @e[tag=selected] at @s run particle minecraft:lava ~0.4 ~1 ~ 0.4 0.6 0.4 0.05 100 force
execute as @e[tag=selected] run team leave @s
execute as @e[tag=selected] run effect clear @s glowing
execute as @e[tag=selected] at @s run tag @s add wasted
execute as @e[tag=selected] at @s run tp @s ~-0.55 ~ ~ 90 ~


scoreboard players add system bancount 1
execute if score system bancount matches 2 run scoreboard players set system step 2
execute if score system bancount matches 2 run scoreboard players set system bancount 0

tag @a[scores={playernumber=1..2}] add onturn
tag @s remove onturn
title @s title [{"text":"禁用完成","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @a[scores={playernumber=1,minioncount=3}] if entity @a[scores={playernumber=2,minioncount=3}] run scoreboard players set system pause 0
execute if score system mode matches 2 if score system pause matches 2 if score system step matches 1 run title @a[tag=onturn] title [{"text":"请禁用一个随从","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score system mode matches 2 if score system pause matches 2 if score system step matches 2 run title @a[tag=onturn] title [{"text":"请选择一个随从","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute as @e[tag=selected] at @s run tag @s remove selected