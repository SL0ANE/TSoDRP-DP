execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=cardcaster] if entity @e[tag=beingused,tag=need_no_target,tag=!limit_1,tag=spell] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 0

execute if score @s cardcasting2 matches 10 run tag @s add 123
execute if score @s cardcasting2 matches 10 as @e[tag=cardcaster] if entity @e[tag=beingused,tag=need_no_target,tag=!limit_1,tag=spell] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s cardcasting2 matches 10 unless entity @e[tag=pass] run scoreboard players set @s cardcasting2 1


execute if score @s cardcasting2 matches 10 run scoreboard players add @e[tag=pass] cardcasttime 1

tag @s remove 123
tag @e remove pass
execute if score @s cardcasting2 matches 10 run kill @s