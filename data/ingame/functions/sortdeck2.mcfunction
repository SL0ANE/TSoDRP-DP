tag @s add 333
execute as @e[tag=card,scores={cardorder=1..},tag=!333,tag=222] if score @s cardorder < @e[tag=333,limit=1] cardorder run tag @s add less
execute unless entity @e[tag=less] run tag @e remove least
execute unless entity @e[tag=less] run tag @s add least
tag @e remove less
tag @s remove 333