tag @s add atkrun
execute facing entity @e[tag=location1,limit=1] feet run tp @s ^ ^ ^0.5
execute if entity @e[tag=location1,distance=..1] run scoreboard players set @s attacking 3
execute if entity @e[tag=location1,distance=..1] run tp @s @e[tag=location1,limit=1]
execute as @e[tag=display] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=atkrun,limit=1] Pos[0]
execute as @e[tag=display] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=atkrun,limit=1] Pos[2]

execute as @e[tag=data] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.5 ~ run tp @s ~ ~ ~

tag @s remove atkrun
#这个function使随从向起始位置移动