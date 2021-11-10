tag @s add 123
execute as @e[tag=minion,scores={dying=145}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute as @e[tag=minion,tag=!dying,scores={recover=-1}] unless score @s ownedby = @e[tag=pass,limit=1] ownedby run tag @s add targetminion
execute if entity @e[tag=targetminion] run tag @s add potentialtrap
tag @e remove pass
tag @e remove targetminion
tag @s remove 123