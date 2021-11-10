execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recovering=3}] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add pass
execute if score @s cardcasting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 0
execute if score @s cardcasting2 matches 18 as @e[tag=minion,tag=!pass,scores={recover=0..}] if score @s minionboard = @e[tag=pass,limit=1] minionboard unless score @s ownedby = @e[tag=pass,limit=1] ownedby run tag @s add step2access
execute if score @s cardcasting2 matches 18 as @e[tag=minion,tag=!pass,scores={recover=-1}] if score @s minionboard = @e[tag=pass,limit=1] minionboard unless score @s ownedby = @e[tag=pass,limit=1] ownedby run tag @s add access
execute if score @s cardcasting2 matches 18 as @e[tag=step2access] at @s run particle dust 0 0 0 3 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=access] run scoreboard players add @e[tag=pass] attacktime 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=access] run scoreboard players add @e[tag=pass] attacked 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=access] run tag @e[tag=pass] add forceattack
execute if score @s cardcasting2 matches 18 if entity @e[tag=step2access] run scoreboard players set @e[tag=step2access] recover 0
execute if score @s cardcasting2 matches 18 if entity @e[tag=step2access] run summon minecraft:marker ~ ~1 ~ {Tags:["normalcaster2","caster2","summon","a_subrecover2","gods","10step2"],Potion:CBC,Age:0,Duration:10000,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute if score @s cardcasting2 matches 18 run scoreboard players operation @e[tag=summon] minioncode = @e[tag=step2access] minioncode
execute if score @s cardcasting2 matches 18 run scoreboard players operation @e[tag=summon] targetcode = @e[tag=123] targetcode
execute if score @s cardcasting2 matches 18 if entity @e[tag=step2access] run kill @s
execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0
tag @e remove summon
tag @e remove pass
tag @e remove access
tag @e remove step2access
tag @s remove 123