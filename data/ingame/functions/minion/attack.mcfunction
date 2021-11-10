tag @s add 123
execute as @e[tag=mascot] if score @s ownedby = @e[tag=click,limit=1] playernumber run scoreboard players operation @s mana -= @e[tag=123,limit=1] cost

scoreboard players add @s attacktime 1
tag @s remove 123