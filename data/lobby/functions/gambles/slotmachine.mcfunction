execute positioned ~-0.5 ~ ~-0.5 as @e[tag=money,dx=0,dz=0,dy=0] run tag @s add detect
execute store result score tempcount system if entity @e[tag=detect,scores={money=10}]
execute if score tempcount system matches 10.. as @e[tag=detect,scores={money=10},limit=10,sort=nearest] run tag @s add pick
execute unless entity @e[tag=pick] as @e[tag=detect,scores={money=100},limit=1,sort=nearest] run tag @s add pick
execute if entity @e[tag=pick] run scoreboard players set slotmachine system 400
kill @e[tag=pick]
scoreboard players reset tempcount system
tag @e remove detect
tag @e remove pick