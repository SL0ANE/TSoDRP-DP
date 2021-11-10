
scoreboard objectives add repeatcount dummy
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["ray","search"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function lobby:tutorial/ray

execute if entity @e[tag=hit] run function lobby:tutorial/usecard3

#scoreboard players set @s rightclick 0


tag @e[tag=hit] remove hit
kill @e[tag=ray]
tag @e remove ray

