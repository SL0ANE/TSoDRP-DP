tag @s add tianchengzuo1
execute as @e[tag=mascot] if score @s ownedby = @e[tag=tianchengzuo1,limit=1] ownedby run scoreboard players operation @s halodamage += @e[tag=tianchengzuo1] stackcount
tag @s remove tianchengzuo1