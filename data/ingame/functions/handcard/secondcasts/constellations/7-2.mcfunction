tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot

execute as @e[tag=picked,tag=discovered] run function ingame:insertdeck_top
execute as @e[tag=unpicked,tag=discovered] run function ingame:insertdeck_bottom
execute if entity @e[tag=picked] run scoreboard players set @e[tag=targetmascot] step 0
execute if entity @e[tag=picked] run scoreboard players set system waiting 15


execute if entity @e[tag=picked] run tag @e remove unpicked
execute if entity @e[tag=picked] run tag @e remove discovered
execute if entity @e[tag=picked] run kill @s
execute if entity @e[tag=picked] run tag @e remove picked
tag @e remove targetmascot
tag @e remove targetcard
tag @s remove 123
