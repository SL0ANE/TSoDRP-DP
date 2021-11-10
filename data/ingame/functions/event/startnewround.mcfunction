execute unless score @s roundcount matches 1.. run tag @e[tag=mascot] add onturn
execute unless score @s roundcount matches 1.. run tag @s remove onturn
execute unless score @s roundcount matches 1.. run execute as @e[tag=mascot,tag=onturn] run scoreboard players set @s roundstarting 24


execute if score @s roundcount matches 1.. run scoreboard players set @s roundstarting 24

scoreboard players set @s roundending 0
