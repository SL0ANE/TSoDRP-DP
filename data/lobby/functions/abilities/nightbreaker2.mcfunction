

scoreboard players add @s repeatcount 1



execute unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!click,dx=0,dy=0,dz=0,limit=1,sort=nearest] add hit
execute unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[tag=landmark,dx=0,dy=0,dz=0,limit=1,sort=nearest] add hit
tp @s ^ ^ ^0.3




execute unless entity @e[tag=hit] as @s[scores={repeatcount=0..800}] at @s run function lobby:abilities/nightbreaker2


scoreboard objectives remove repeatcount



