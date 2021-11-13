scoreboard players remove runcount system 1
execute as @e[tag=minion] run scoreboard players set @s attack 0
execute as @e[tag=minion] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=minion] run scoreboard players operation @s attack += @s haloattack
execute as @e[tag=mascot] run scoreboard players set @s attack 0
execute as @e[tag=mascot] run scoreboard players operation @s attack += @s trueattack
execute as @e[tag=mascot] run scoreboard players operation @s attack += @s haloattack





execute as @e[tag=activatedhalo,tag=caster2,tag=yuepunk,tag=4] unless score @s dying matches 1.. at @s run function ingame:handcard/secondcasts/yuepunk/4


execute as @e[tag=activatedhalo,tag=paxiweier,scores={recover=-1}] at @s run function ingame:ma/paxiweier







execute if score runcount system matches 1.. run function ingame:halos2