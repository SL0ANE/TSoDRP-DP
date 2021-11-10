
tag @s add running
tp @s ~ 0 ~
execute as @s if data entity @s ArmorItems[3].Count run data modify entity @s HandItems[1] set from entity @s ArmorItems[3]
execute as @s run data modify entity @s ArmorItems[3] set value {}

execute as @e[tag=deck] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetdeck
execute if score @s cardorder matches 1.. as @e[tag=card,tag=!running,scores={cardorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards1
execute if score @s dcpileorder matches 1.. as @e[tag=card,tag=!running,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards2
execute if score @s handorder matches 1.. as @e[tag=card,tag=!running,scores={handorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards3
execute as @e[tag=targetcards1] if score @s cardorder > @e[tag=running,limit=1] cardorder run scoreboard players remove @s cardorder 1
execute as @e[tag=targetcards2] if score @s dcpileorder > @e[tag=running,limit=1] dcpileorder run scoreboard players remove @s dcpileorder 1
execute as @e[tag=targetcards3] if score @s handorder > @e[tag=running,limit=1] handorder run scoreboard players remove @s handorder 1
scoreboard players reset @s handorder
scoreboard players reset @s dcpileorder
scoreboard players reset @s cardorder
scoreboard players reset @s damage
#execute as @e[tag=targetdeck] run function ingame:setdeck


tag @e remove targetdeck
tag @e remove targetcards1
tag @e remove targetcards2
tag @e remove targetcards3
tag @s remove running
