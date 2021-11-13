tag @s add modeleide2
execute as @e[tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=modeleide2,limit=1] minioncode run tag @s add adddodge
execute as @e[tag=minion,scores={recover=-1}] if score @s minioncode = @e[tag=modeleide2,limit=1] minioncode run scoreboard players set @s dodgetime 2
tag @s remove modeleide2