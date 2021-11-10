tag @s add 555




execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=555,limit=1] ownedby run tag @s add 222


execute store result score @e[tag=555] deckcount if entity @e[tag=222]
execute unless entity @e[tag=card,scores={cardorder=1},tag=222] run function ingame:sortdeck
function ingame:pregamedrawcard

tag @s remove faildraw
tag @s remove cantdraw
tag @s remove candraw
tag @e remove 222
tag @s remove 555



