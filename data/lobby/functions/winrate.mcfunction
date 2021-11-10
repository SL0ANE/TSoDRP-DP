scoreboard players operation temp winrate = @s win
scoreboard players operation temp winrate *= 10000 number
scoreboard players operation temp winrate /= @s gameplayed
scoreboard players operation @s winrate = temp winrate
scoreboard players reset temp winrate