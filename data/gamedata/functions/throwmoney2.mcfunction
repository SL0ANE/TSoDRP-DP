tag @s add 123
execute store result score @s uuid run data get entity @s Thrower[0]
execute as @a[tag=thrower] if score @s uuid = @e[tag=123,limit=1] uuid run function gamedata:throwmoney3
tag @s add money
tag @s remove 123
