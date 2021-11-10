tag @s add click
scoreboard objectives add repeatcount dummy

summon minecraft:marker ~ ~1 ~ {Tags:["ray","s_minion","search"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function ingame:ray
execute as @e[tag=hit,tag=minion] at @s run function ingame:minion/testattack
execute if entity @e[tag=hit,tag=endround] run playsound minecraft:ui.button.click block @a[tag=click] ~ ~ ~ 3 0.4 1
execute if entity @e[tag=hit,tag=endround] if entity @e[tag=targetmascot] run data merge entity @e[tag=endround,limit=1] {CustomName:"[{\"text\":\"回合结束\",\"color\":\"red\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}
execute if entity @e[tag=hit,tag=endround] run scoreboard players set @e[tag=targetmascot] roundending 24
tag @e[tag=hit] remove deny
tag @e[tag=hit] remove hit
kill @e[tag=ray]

tag @s remove click