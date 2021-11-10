tag @s add 777
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=777,limit=1] playernumber run tag @s add 222
execute as @e[tag=card,scores={cardorder=1..},tag=222] run function ingame:sortdeck2
execute as @e[tag=least] run scoreboard players set @s cardorder 1
tag @e remove least
tag @s remove 777