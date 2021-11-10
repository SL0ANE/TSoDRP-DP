execute if score @s combo > system combo run tag @s add pass
execute as @s[tag=pass] run scoreboard players operation system combo = @s combo
scoreboard players operation 频道历史最高 combodisplay = system combo
scoreboard players reset @s combotime
scoreboard players reset @s combo
tag @s remove pass