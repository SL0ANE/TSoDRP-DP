execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=mascot,tag=onturn] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s casting 1


execute if score @s casting matches 18 run summon minecraft:marker ~ ~0.5 ~ {Tags:["beierfenge","minioncaster","summon"]}
execute if score @s casting matches 18 as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 18 unless entity @e[tag=pick] as @e[tag=targets,limit=1,sort=random] run tag @s add pick
execute if score @s casting matches 18 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s casting matches 18 run scoreboard players set @e[tag=summon] cardcasting 40

execute if score @s casting matches 18 run scoreboard players set @s casting 5
tag @e remove pick
tag @e remove targetmascot
tag @e remove summon
tag @e remove targets
tag @s remove 123
