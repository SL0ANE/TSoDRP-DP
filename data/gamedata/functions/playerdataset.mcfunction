tag @s add running
execute as @e[tag=reportholder] if score @s playerid = @a[tag=running,limit=1] playerid run tag @s add targetholder
execute unless score @s totalgameplayed = @e[tag=targetholder,limit=1] totalgameplayed run scoreboard players operation @s totalgameplayed = @e[tag=targetholder,limit=1] totalgameplayed
execute unless score @s gameplayed = @e[tag=targetholder,limit=1] gameplayed run scoreboard players operation @s gameplayed = @e[tag=targetholder,limit=1] gameplayed
execute unless score @s streak = @e[tag=targetholder,limit=1] streak run scoreboard players operation @s streak = @e[tag=targetholder,limit=1] streak
execute unless score @s win = @e[tag=targetholder,limit=1] win run scoreboard players operation @s win = @e[tag=targetholder,limit=1] win
execute unless score @s totalwin = @e[tag=targetholder,limit=1] totalwin run scoreboard players operation @s totalwin = @e[tag=targetholder,limit=1] totalwin
execute unless score @s lose = @e[tag=targetholder,limit=1] lose run scoreboard players operation @s lose = @e[tag=targetholder,limit=1] lose
execute unless score @s totallose = @e[tag=targetholder,limit=1] totallose run scoreboard players operation @s totallose = @e[tag=targetholder,limit=1] totallose
execute unless score @s gamedraw = @e[tag=targetholder,limit=1] gamedraw run scoreboard players operation @s gamedraw = @e[tag=targetholder,limit=1] gamedraw
execute unless score @s totalgamedraw = @e[tag=targetholder,limit=1] totalgamedraw run scoreboard players operation @s totalgamedraw = @e[tag=targetholder,limit=1] totalgamedraw
execute unless score @s scores = @e[tag=targetholder,limit=1] scores run scoreboard players operation @s scores = @e[tag=targetholder,limit=1] scores

tag @e remove targetholder
tag @s remove running