tag @s add jinniuzuo1
tag @s add addpuzzle
execute unless score @s puzzletime matches 5.. run scoreboard players set @s puzzletime 2
scoreboard players operation @s haloattack -= @s trueattack
scoreboard players operation @s haloattack += @e[tag=!jinniuzuo1,scores={attacking=1..}] attack
tag @s remove jinniuzuo1