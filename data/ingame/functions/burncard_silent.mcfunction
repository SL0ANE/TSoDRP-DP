
tag @s add running


execute as @e[tag=deck] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetdeck
execute as @e[tag=card,tag=!running,scores={cardorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards
execute as @e[tag=targetcards] if score @s cardorder > @e[tag=running,limit=1] cardorder run scoreboard players remove @s cardorder 1
#scoreboard players reset @s damage
#execute as @e[tag=targetdeck] run function ingame:setdeck



kill @s
tag @e remove targetdeck
tag @e remove targetcards
tag @s remove running
