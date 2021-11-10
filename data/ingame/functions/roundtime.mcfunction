bossbar add roundtime {"text":""}
execute if score roundtime2 system matches 301.. store result bossbar minecraft:roundtime max run scoreboard players get roundtime system
execute store result bossbar minecraft:roundtime value run scoreboard players get roundtime2 system
execute if score roundtime2 system matches 301.. run bossbar set minecraft:roundtime color green
execute if score roundtime2 system matches 1..300 run bossbar set minecraft:roundtime color red
bossbar set minecraft:roundtime players @a[tag=ingame]
execute if score roundtime2 system matches 0..30 if score eventplaying pause matches 0 as @e[tag=mascot,tag=onturn] run scoreboard players set @s roundending 24
execute if score roundtime2 system matches 1.. if score eventplaying pause matches 0 run scoreboard players remove roundtime2 system 1