tag @s add 567
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=567,limit=1] ownedby run tag @s add 897
scoreboard objectives add tempoorder dummy

execute as @e[tag=897] run function ingame:sortdeck4
tag @e remove 897
tag @s remove 567
say 123