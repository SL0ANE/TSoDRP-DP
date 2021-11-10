tag @s add 123
execute as @e[tag=card,scores={handorder=1..}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s halocost 1
tag @s remove 123
