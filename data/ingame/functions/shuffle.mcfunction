tag @s add 123
execute as @e[tag=card] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add 234
execute as @e[tag=234,scores={dcpileorder=0}] unless score @s handorder matches 1.. run scoreboard players set @s cardorder 0
execute as @e[tag=234,scores={dcpileorder=1..}] run scoreboard players set @s cardorder 0
execute as @e[tag=234,sort=random,limit=1,scores={cardorder=0}] run function ingame:shuffle2
#function ingame:setdeck
tag @e remove 234
tag @s remove 123
