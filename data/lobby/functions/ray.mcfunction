tag @s add click
scoreboard objectives add repeatcount dummy
playsound minecraft:ui.button.click block @s ~ ~ ~ 3 1.2 1
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["ray"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function lobby:ray2
execute as @e[tag=hit] at @s run function lobby:buttonclicked
tag @e[tag=hit] remove hit
tag @s remove click