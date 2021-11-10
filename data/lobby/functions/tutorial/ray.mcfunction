

scoreboard players add @s repeatcount 1


tag @s add hitwall
execute if block ^0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^-0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^-0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^-0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^-0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=button2,tag=t_minion,limit=1,sort=nearest] add hit
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-1.5 ~-0.5 run tag @e[dx=0,dy=0.45,dz=0,tag=t_mascot,limit=1,sort=nearest] add hit
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=t_dcpile,limit=1,sort=nearest] add hit
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=t_deck,limit=1,sort=nearest] add hit


execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=button2,tag=t_endround,limit=1,sort=nearest] add hit
execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=button2,tag=t_minion,limit=1,sort=nearest] add hit
execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-1.5 ~-0.5 run tag @e[dx=0,dy=0.45,dz=0,tag=t_mascot,limit=1,sort=nearest] add hit
execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=t_card,tag=discovered,limit=1,sort=nearest] add hit
execute if entity @s[tag=s_dp] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=t_card,tag=discovered,limit=1,sort=nearest] add hit

#发现牌

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=hit] run tag @s add hitwall


particle minecraft:dust 1 1 1 0.3 ~ ~ ~ 0 0 0 0 1 force @a[tag=click]
tp @s[tag=!hitwall] ^ ^ ^0.1



execute as @s[tag=!hitwall,scores={repeatcount=0..800}] at @s run function lobby:tutorial/ray


scoreboard objectives remove repeatcount



