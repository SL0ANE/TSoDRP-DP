tag @e remove 810
tag @e remove runner
tag @s add runner
tp @s ~ ~ ~ ~ ~
scoreboard players add @s cardorder 1
execute as @e[tag=234,tag=!runner] if score @s cardorder = @e[tag=runner,limit=1] cardorder run tag @s add 810
execute as @e[tag=810] at @e[tag=runner] rotated as @e[tag=runner] positioned ^ ^ ^0.03 run tp @s ~ ~ ~ ~ ~
scoreboard players remove @s cardorder 1
execute as @e[tag=810] at @s run function ingame:display/deck1
tag @s remove runner