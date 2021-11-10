tag @s add atkrun



execute as @s at @s facing entity @e[tag=atktarget,limit=1] feet run tp @s ^ ^ ^0.5
execute as @e[tag=display] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=atkrun,limit=1] Pos[0]
execute as @e[tag=display] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=atkrun,limit=1] Pos[2]

execute as @e[tag=data] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.5 ~ run tp @s ~ ~ ~


execute at @s if entity @e[tag=minion,tag=atktarget,distance=..1.5] run scoreboard players set @s attacking 18
execute at @s if entity @e[tag=mascot,tag=atktarget,distance=..1] run scoreboard players set @s attacking 18



tag @s remove atkrun
#这个function会使随从向攻击目标前进