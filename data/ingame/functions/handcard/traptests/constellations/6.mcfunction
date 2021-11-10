tag @s add 123
execute as @e[tag=minion,scores={attacking=36}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute as @e[tag=minion,scores={attacking=36}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass

execute if entity @e[tag=pass] run tag @s add potentialtrap
tag @e remove targetminion
tag @e remove pass
tag @s remove 123