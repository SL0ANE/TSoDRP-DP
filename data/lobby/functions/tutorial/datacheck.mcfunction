tag @s add click





scoreboard objectives add repeatcount dummy
playsound minecraft:ui.button.click block @s ~ ~ ~ 3 1.2 1
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["search","ray","datacheck"],Potion:CBC,Age:0,Duration:0,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute anchored eyes run tp @e[tag=ray] ^ ^ ^0.5 ~ ~
execute as @e[tag=ray] at @s run function lobby:tutorial/ray

execute as @e[tag=hit,tag=t_minion] unless score @s recover matches -2 run function ingame:minion/datacheck2
execute as @e[tag=hit,tag=t_minion] if score @s recover matches -2 if score @s ownedby = @a[tag=click,limit=1] playernumber run function ingame:minion/datacheck2
execute as @e[tag=hit,tag=t_minion] if score @s recover matches -2 unless score @s ownedby = @a[tag=click,limit=1] playernumber run function ingame:minion/datacantcheck
execute as @e[tag=hit,tag=t_mascot] run function lobby:tutorial/mascotdata
execute as @e[tag=hit,tag=t_dcpile] run function lobby:tutorial/dcpilecheck
execute as @e[tag=hit,tag=t_deck] run function lobby:tutorial/deckcheck
execute as @e[tag=hit,tag=t_card] unless score @s handorder matches 1.. unless score @s cardorder matches 1.. if score @s ownedby = @e[tag=click,limit=1] playernumber run function ingame:handcard/datacheck


tag @e remove 345
tag @e remove 234
tag @e[tag=hit] remove deny
tag @e[tag=hit] remove hit
kill @e[tag=ray]
tag @s remove click


