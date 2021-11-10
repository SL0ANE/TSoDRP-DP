tag @s add 123
execute as @e[tag=minion] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s haloattack 2

tag @s remove 123