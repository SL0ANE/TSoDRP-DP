tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute store result score @e[tag=targetmascot] deckcount if entity @e[tag=targetcard]

execute as @e[tag=picked,tag=discovered] run tag @s add forcedraw
execute as @e[tag=picked,tag=discovered] run function ingame:inserthand
execute as @e[tag=unpicked,tag=discovered] run kill @s
execute if entity @e[tag=picked] run scoreboard players set @e[tag=targetmascot] step 0
execute if entity @e[tag=picked] run scoreboard players set system waiting 15



execute if entity @e[tag=picked] run tag @e remove unpicked
execute if entity @e[tag=picked] run tag @e remove discovered
execute if entity @e[tag=picked] run kill @s
execute if entity @e[tag=picked] run tag @e remove picked
tag @e remove targetmascot
tag @e remove targetcard
tag @s remove 123
