scoreboard players operation x1 x = @s x
scoreboard players operation z1 z = @s z
scoreboard players operation rotation1 rotation = @s rotation

execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s z run data get entity @s Pos[2] 10000
execute store result score @s rotation run data get entity @s Rotation[0] 10

