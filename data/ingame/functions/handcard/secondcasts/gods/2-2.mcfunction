tag @s add 123
execute as @e[tag=minion] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add dmgimmune
execute as @e[tag=minion] if score @s minioncode = @e[tag=123,limit=1] minioncode unless score @s dmgimmunetime matches 5.. run scoreboard players set @s dmgimmunetime 2
tag @s remove 123
