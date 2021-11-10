scoreboard players add @s laser_effect 1
particle dust 1 0 0 0.3 ~ ~0.3 ~ 0.08 0.08 0.08 0 20 force @a[tag=ingame]
execute if entity @e[tag=target,distance=..0.4] run scoreboard players set @s laser_effect 30
execute unless score @s laser_effect matches 30.. facing entity @e[tag=target] feet positioned ^ ^ ^0.3 run function ingame:effect/laser_slow2
execute if score @s laser_effect matches 30.. run scoreboard objectives remove laser_effect