summon minecraft:marker ~ ~0.5 ~ {Tags:["cardcaster","summon"]}
scoreboard players operation @e[tag=summon] ownedby = @s ownedby
scoreboard players operation @e[tag=summon] truedamage = @e[tag=beingused,scores={truedamage=1..}] truedamage
scoreboard players set @e[tag=summon] cardcasting 40
tag @e[tag=summon,tag=cardcaster] remove summon
effect give @e[tag=cardtarget] glowing 1 0 true