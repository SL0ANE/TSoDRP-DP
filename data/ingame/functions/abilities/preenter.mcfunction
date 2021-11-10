tag @s add xyz
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=xyz,limit=1] minioncode run tag @s add target
execute as @e[tag=target] at @s run data modify entity @s CustomName set from block 0 1 0 Text4
execute as @e[tag=target] at @s run data merge entity @s {CustomNameVisible:0}
tag @e[tag=target] remove target
tag @s remove xyz







tag @e[tag=mascot,tag=onturn] add 789
execute as @e[tag=trapcaster] unless score @s ownedby = @e[tag=789,limit=1] ownedby run function ingame:handcard/traptest
execute unless entity @e[tag=potentialtrap] unless entity @s[tag=a_preenter] unless entity @e[tag=a_preenter2,tag=!dying,scores={recover=-1}] unless entity @e[tag=a_preenter2,tag=normalcaster2] run scoreboard players set @s entering 7
execute if entity @s[tag=a_preenter] run scoreboard players set @s casting 25
execute as @e[tag=a_preenter2,tag=!dying,scores={recover=-1}] run scoreboard players set @s casting 25
execute as @e[tag=a_preenter2,tag=normalcaster2] run scoreboard players set @s cardcasting2 25
scoreboard players set @e[tag=a_preenter2,tag=potentialtrap] trapcasting 40
tag @e remove potentialtrap
tag @e[tag=mascot,tag=onturn] remove 789
#检测如果自身技能触发时机不为“登场时”，且不存在其他拥有“登场时”时机的随从
