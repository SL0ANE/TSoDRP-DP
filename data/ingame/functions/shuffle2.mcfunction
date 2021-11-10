scoreboard players add @e[tag=234,scores={cardorder=1..}] cardorder 1
scoreboard players set @s cardorder 1
scoreboard players set @s dcpileorder 0
execute as @e[tag=234,sort=random,limit=1,scores={cardorder=0}] run function ingame:shuffle2