
execute if score system arena matches 1 positioned 67.50 28 0.5 if entity @e[tag=playing,gamemode=adventure,scores={playernumber=1},distance=..8] run fill 68 17 7 66 19 7 minecraft:iron_bars
execute if score system arena matches 1 positioned 67.50 28 0.5 unless entity @e[tag=playing,gamemode=adventure,scores={playernumber=1},distance=..8] run fill 68 17 7 66 19 7 minecraft:air

execute if score system arena matches 1 positioned 67.50 28 -9.5 if entity @e[tag=playing,gamemode=adventure,scores={playernumber=2},distance=..8] run fill 66 17 -17 68 19 -17 minecraft:iron_bars
execute if score system arena matches 1 positioned 67.50 28 -9.5 unless entity @e[tag=playing,gamemode=adventure,scores={playernumber=2},distance=..8] run fill 66 17 -17 68 19 -17 minecraft:air