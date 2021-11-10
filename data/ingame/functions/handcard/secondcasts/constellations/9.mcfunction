tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute store result score @e[tag=targetmascot] deckcount if entity @e[tag=targetcard]

execute if entity @e[tag=picked,tag=discovered,tag=9-1] as @e[tag=cardtarget] run function ingame:minion/reset
execute if entity @e[tag=picked,tag=discovered,tag=9-2] as @e[tag=cardtarget] run scoreboard players add @s trueattack 4
execute if entity @e[tag=picked,tag=discovered,tag=9-3] as @e[tag=cardtarget] run scoreboard players add @s hp 4
execute if entity @e[tag=picked] run scoreboard players set @e[tag=targetmascot] step 0



execute if entity @e[tag=picked] run kill @s
execute if entity @e[tag=picked] run kill @e[tag=discovered]
tag @e remove targetmascot
tag @e remove targetcard
tag @s remove 123
