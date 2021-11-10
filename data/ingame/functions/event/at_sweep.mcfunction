tag @s add 234
execute if entity @s[tag=sweep] as @e[tag=atktarget] run tag @s add 345
execute if entity @e[tag=345,scores={minionboard=1}] as @e[tag=minion,scores={minionboard=2,recover=-1}] if score @s ownedby = @e[tag=345,limit=1] ownedby run tag @s add hit
execute if entity @e[tag=345,scores={minionboard=2}] as @e[tag=minion,scores={minionboard=1,recover=-1}] if score @s ownedby = @e[tag=345,limit=1] ownedby run tag @s add hit
execute if entity @e[tag=345,scores={minionboard=2}] as @e[tag=minion,scores={minionboard=3,recover=-1}] if score @s ownedby = @e[tag=345,limit=1] ownedby run tag @s add hit
execute if entity @e[tag=345,scores={minionboard=3}] as @e[tag=minion,scores={minionboard=2,recover=-1}] if score @s ownedby = @e[tag=345,limit=1] ownedby run tag @s add hit

tag @e[tag=hit] add at_dmgto
execute as @e[tag=hit] run scoreboard players operation @s at_dmgtaken += @e[tag=234] dmgdeal
tag @e remove hit
tag @e remove 345
tag @s remove 234
execute if entity @s[tag=!sweep] run scoreboard players set @s dmgdealing 4
execute unless entity @s[tag=hit] run scoreboard players set @s dmgdealing 4