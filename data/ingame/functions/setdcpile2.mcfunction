tag @s add 444
scoreboard players operation temp dcpileorder = @s dcpileorder
scoreboard players remove temp dcpileorder 1
execute as @e[tag=666] if score @s dcpileorder = temp dcpileorder run tag @s add 000
execute as @s at @e[tag=000] rotated ~ ~ run tp @s ~ ~ ~
scoreboard players reset temp dcpileorder
tag @e remove 000
tag @s remove 444