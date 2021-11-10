execute as @e[tag=carduser] run tag @s add 593
execute unless entity @e[tag=carduser] run tag @s add 593




execute as @e[tag=environment,tag=beingused,tag=!invalid] run function ingame:environmentdisplay
execute as @e[tag=trap,tag=beingused,tag=!invalid] run function ingame:trapdisplay

scoreboard players reset @s targetcode

tag @e remove 593
tag @e remove 759

execute as @s unless entity @e[tag=mascot,scores={usingcard=1..}] unless score @s cardcasting matches 1.. run kill @s
