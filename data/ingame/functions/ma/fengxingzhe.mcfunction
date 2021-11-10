
execute if score @s supercasting matches 18 run tag @s add 123
execute if score @s supercasting matches 18 unless entity @e[tag=target] as @e[tag=!double_casted,tag=minion,tag=a_predeath,scores={dying=1..,casting=1..5}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s supercasting matches 18 unless entity @e[tag=target] as @e[tag=!double_casted,tag=minion,tag=a_subdeath,scores={dying=1..,casting=1..5}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target

execute if score @s supercasting matches 18 unless entity @e[tag=target] run scoreboard players set @s supercasting 0

execute if score @s supercasting matches 18 run tag @e[tag=target] add double_casting

execute if score @s supercasting matches 18 run scoreboard players set @s supercasting 0
tag @s remove 123

tag @e remove target



