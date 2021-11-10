tag @s add 123
execute as @e[tag=minion,scores={attacking=36}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if entity @e[tag=targetminion] as @e[tag=atktarget,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass

execute if entity @e[tag=pass] run tag @s add potentialtrap
tag @e remove targetmascot
tag @e remove pass
tag @s remove 123