tag @s add 313
execute store result score @s minionid run data get entity @s ArmorItems.[3].tag.CustomModelData 1
execute as @e[tag=caster2] if score @s minioncode = @e[tag=313 ,limit=1] minioncode run kill @s
scoreboard players reset @s attacked
scoreboard players reset @s stun
scoreboard players reset @s reducedrecover
scoreboard players reset @s casting
scoreboard players reset @s casting2
scoreboard players reset @s supercasting
tag @s remove attacked
tag @s remove mute
tag @s remove casted
tag @s remove casted2
tag @s remove aggressive
tag @s remove immune
tag @s remove prudent
tag @s remove tough
tag @s remove keen
tag @s remove puzzle
tag @s remove cunning
tag @s remove dodge
tag @s remove block
tag @s remove strike
tag @s remove chain
tag @s remove sweep
function ingame:minion/buffcheck
tag @s remove 313
