tag @s add 123
execute as @e[tag=minion] if score @s minioncode = @e[tag=123,limit=1] minioncode run scoreboard players operation @s haloattack -= @e[tag=123] number


tag @s remove 123
