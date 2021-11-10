tag @s add click

scoreboard objectives add repeatcount dummy
execute as @e[tag=mascot] if score @s ownedby = @e[tag=click,limit=1] playernumber if score @s step matches 1 run tag @s add pass
execute if entity @e[tag=pass] run summon minecraft:marker ~ ~1 ~ {Tags:["ray","s_dp","summon"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function ingame:ray

execute as @e[tag=hit,tag=discovered] run tag @s add picked
execute if entity @e[tag=picked] as @e[tag=!hit,tag=discovered] run tag @s add unpicked
kill @e[tag=summon]
tag @e remove summon
tag @e remove pass
tag @e remove hit
tag @s remove click