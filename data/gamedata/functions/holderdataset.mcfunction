tag @s add running
execute as @e[tag=reportholder] if score @s playerid = @a[tag=running,limit=1] playerid run tag @s add targetholder
execute unless score @e[tag=targetholder,limit=1] totalgameplayed = @s totalgameplayed run scoreboard players operation @e[tag=targetholder,limit=1] totalgameplayed = @s totalgameplayed
execute unless score @e[tag=targetholder,limit=1] gameplayed = @s gameplayed run scoreboard players operation @e[tag=targetholder,limit=1] gameplayed = @s gameplayed
execute unless score @e[tag=targetholder,limit=1] streak = @s streak run scoreboard players operation @e[tag=targetholder,limit=1] streak = @s streak
execute unless score @e[tag=targetholder,limit=1] win = @s win run scoreboard players operation @e[tag=targetholder,limit=1] win = @s win
execute unless score @e[tag=targetholder,limit=1] totalwin = @s totalwin run scoreboard players operation @e[tag=targetholder,limit=1] totalwin = @s totalwin
execute unless score @e[tag=targetholder,limit=1] lose = @s lose run scoreboard players operation @e[tag=targetholder,limit=1] lose = @s lose
execute unless score @e[tag=targetholder,limit=1] totallose = @s totallose run scoreboard players operation @e[tag=targetholder,limit=1] totallose = @s totallose
execute unless score @e[tag=targetholder,limit=1] gamedraw = @s gamedraw run scoreboard players operation @e[tag=targetholder,limit=1] gamedraw = @s gamedraw
execute unless score @e[tag=targetholder,limit=1] totalgamedraw = @s totalgamedraw run scoreboard players operation @e[tag=targetholder,limit=1] totalgamedraw = @s totalgamedraw
execute unless score @e[tag=targetholder,limit=1] scores = @s scores run scoreboard players operation @e[tag=targetholder,limit=1] scores = @s scores

tag @e remove targetholder
tag @s remove running