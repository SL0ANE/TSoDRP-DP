
tag @s add running


execute as @e[tag=card,scores={cardorder=1..},tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add count
execute store result score count system if entity @e[tag=count]
execute if score @s cardorder matches 1.. as @e[tag=card,scores={cardorder=1..},tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards
execute if score count system matches ..31 as @e[tag=targetcards] if score @s cardorder > @e[tag=running,limit=1] cardorder run scoreboard players remove @s cardorder 1
execute if score @s dcpileorder matches 1.. as @e[tag=card,scores={dcpileorder=1..},tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards2
execute as @e[tag=targetcards2] if score @s dcpileorder > @e[tag=running,limit=1] dcpileorder run scoreboard players remove @s dcpileorder 1
#scoreboard players reset @s damage
function ingame:carddamage
scoreboard players operation @s ownedby = @e[tag=targetmascot,limit=1] ownedby
execute as @e[tag=deck] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetdeck
scoreboard players reset @s[scores={dcpileorder=1..}] dcpileorder
scoreboard players reset @s[scores={handorder=1..}] handorder
scoreboard players reset @s[scores={cardorder=1..}] cardorder
#scoreboard players reset @s damage
#execute as @e[tag=targetdeck] run function ingame:setdeck



kill @s
tag @e remove count
tag @e remove targetdeck
tag @e remove targetcards
tag @e remove targetcards2
tag @s remove running
