tag @s add modeleide1
execute as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=modeleide1,limit=1] ownedby run tag @s add targetcards
scoreboard players reset @s stackcount
execute as @e[tag=targetcards] run function ingame:ma/modeleide2
execute store result score @s stackcount if entity @e[tag=count]
tag @e remove count
tag @e remove counted
tag @e remove targetcards
tag @s remove modeleide1