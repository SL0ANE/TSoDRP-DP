tag @s add 123

execute if score @s cardcasting3 matches 18 as @e[tag=character,scores={healing=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting3 matches 18 unless entity @e[tag=pass] run scoreboard players reset @s cardcasting3
execute if score @s cardcasting3 matches 18 as @e[tag=pass] run scoreboard players operation @s healtaken += @s healtaken
execute if score @s cardcasting3 matches 18 run kill @s
tag @e remove pass
tag @s remove 123
