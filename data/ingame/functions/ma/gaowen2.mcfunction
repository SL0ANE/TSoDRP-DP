tag @s add gaowen1

tag @s add addsweep
execute unless score @s sweeptime matches 5.. run scoreboard players set @s sweeptime 2

execute as @e[tag=mascot] if score @s ownedby = @e[tag=gaowen1,limit=1] ownedby unless score @s roundfoldcard matches 1.. as @e[tag=gaowen1] run scoreboard players operation @s haloattack -= @s trueattack
execute as @e[tag=mascot] if score @s ownedby = @e[tag=gaowen1,limit=1] ownedby unless score @s roundfoldcard matches 1.. as @e[tag=gaowen1] run scoreboard players add @s haloattack 2

tag @s remove gaowen1