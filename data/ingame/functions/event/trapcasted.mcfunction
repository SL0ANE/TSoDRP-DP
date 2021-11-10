tag @s add 593
execute as @e[tag=trapcaster,tag=!593] if score @s ownedby = @e[tag=593,limit=1] ownedby run tag @s add 313
execute as @e[tag=313] if score @s trapcastorder > @e[tag=593,limit=1] trapcastorder run scoreboard players remove @s trapcastorder 1
execute as @e[tag=313] run function ingame:trapdisplay

function ingame:event/casterdestroy

tag @s remove 593
tag @e remove 313