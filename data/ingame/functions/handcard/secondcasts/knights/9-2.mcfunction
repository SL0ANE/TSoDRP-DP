tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add dmgimmune
execute as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby unless score @s dmgimmunetime matches 5.. run scoreboard players set @s dmgimmunetime 2
tag @s remove 123
