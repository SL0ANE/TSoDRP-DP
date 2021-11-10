execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=minion,tag=atktarget] if score @s minioncode = @e[tag=123,limit=1] minioncode run tag @s add target
execute if score @s cardcasting2 matches 18 unless entity @e[tag=target] run scoreboard players set @s cardcasting2 1

execute if score @s cardcasting2 matches 18 as @e[tag=target] at @s positioned ~ ~4 ~ run function ingame:effect/light_buff_summon
execute if score @s cardcasting2 matches 18 run tag @e[tag=summon3] add block


execute if score @s cardcasting2 matches 18 run scoreboard players add @e[tag=target] attacktime 1
execute if score @s cardcasting2 matches 18 run scoreboard players add @e[tag=target] attacked 1

execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1

execute if score @s cardcasting2 matches 18 if entity @e[tag=target] run kill @s


tag @e remove summon3
tag @e remove target
tag @s remove 123

