tag @s add 678
execute as @e[scores={trapcasting=40}] if score @s trapcastorder > @e[tag=678,limit=1] trapcastorder run tag @s add 234
execute unless entity @e[tag=234] run tag @s add pick


tag @s remove 678
tag @e remove 234