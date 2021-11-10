tag @e remove running
tag @e remove prior
tag @s add running
execute unless entity @e[tag=prior] if score @s cardorder matches 1.. as @e[tag=card,scores={folding=23,handorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add prior
execute unless entity @e[tag=prior] if score @s cardorder matches 1.. as @e[tag=card,scores={folding=23,cardorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby if score @s cardorder < @e[tag=running,limit=1] cardorder run tag @s add prior
execute unless entity @e[tag=prior] if score @s handorder matches 1.. as @e[tag=card,scores={folding=23,handorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby if score @s handorder < @e[tag=running,limit=1] handorder run tag @s add prior
execute unless entity @e[tag=prior] run tag @s add pick
execute as @e[tag=prior,limit=1,sort=random] run function ingame:foldorder2
tag @s remove running
tag @e remove prior