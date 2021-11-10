tag @s add xyz
scoreboard players reset @s reducedrecover

execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=xyz,limit=1] minioncode run tag @s add target
execute as @e[tag=target] at @s run data modify entity @s CustomName set from block 22 25 -5 Text4
execute as @e[tag=target] at @s run data merge entity @s {CustomNameVisible:0}


tag @e[tag=target] remove target
scoreboard players reset @s dying
function ingame:minion/buffcheck

tag @s remove xyz