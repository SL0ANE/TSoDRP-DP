tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add 234
execute unless score @e[tag=234,limit=1] dcpilecount matches 8.. run scoreboard players operation @s truedamage = @e[tag=234,limit=1] handcardcount
execute unless score @e[tag=234,limit=1] dcpilecount matches 8.. run scoreboard players remove @s truedamage 1
execute if score @e[tag=234,limit=1] dcpilecount matches 8.. run scoreboard players operation @s truedamage = @e[tag=234,limit=1] dcpilecount
tag @e remove 234
tag @s remove 123
