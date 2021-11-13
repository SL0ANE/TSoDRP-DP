tag @s add 313
execute as @e[tag=caster2] if score @s minioncode = @e[tag=313 ,limit=1] minioncode run kill @s
scoreboard players reset @s attacked
scoreboard players reset @s stun
scoreboard players reset @s reducedrecover
execute if score @s recover matches 1.. run scoreboard players set @s recover 0
function lobby:display/minionset3
scoreboard players operation @s trueattack = @s basic_attack
scoreboard players operation @s hp = @s basic_hp
scoreboard players operation @s hplimit = @s basic_hp
tag @s add character
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