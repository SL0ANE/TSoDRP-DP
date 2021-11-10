tag @s add 678
execute as @e[scores={cardcasting2=25}] if score @s cardcast2order > @e[tag=678,limit=1] cardcast2order run tag @s add 234
execute unless entity @e[tag=234] run tag @s add pick


tag @s remove 678
tag @e remove 234