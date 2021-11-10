

scoreboard players add @s repeatcount 1




tag @s add hitwall
execute if block ^0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^-0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^-0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^-0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^-0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0,dz=0,tag=button,tag=instructions,tag=Minion,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0,dz=0,tag=button,tag=instructions,tag=Trap,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0,dz=0,tag=button,tag=instructions,tag=Environment,tag=!deactivate,limit=1,sort=nearest] add hit


execute positioned ~-0.5 ~-2 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.95,dz=0,tag=button,tag=instructions,tag=Player,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-1.5 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.45,dz=0,tag=button,tag=instructions,tag=Mascot,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-1 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.45,dz=0,tag=button,tag=instructions,tag=Handcard,tag=!deactivate,limit=1,sort=nearest] add hit

execute positioned ~-0.5 ~-2 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.95,dz=0,tag=button,tag=minion2,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-2 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.95,dz=0,tag=button,tag=minion,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-2 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.95,dz=0,tag=button,tag=p_card,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-2 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0.95,dz=0,tag=button,tag=card,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[tag=hit] run tag @e[dx=0,dy=0,dz=0,tag=button,tag=!minion2,tag=!card,tag=!deactivate,limit=1,sort=nearest] add hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=hit] run tag @s add hitwall

particle minecraft:dust 1 1 1 0.3 ~ ~ ~ 0 0 0 0 1 force @a[tag=click]
particle minecraft:dust 1 1 1 0.3 ~ ~ ~ 0 0 0 0 1 force @a[tag=click]
tp @s[tag=!hitwall] ^ ^ ^0.1


    


execute as @s[tag=!hitwall,scores={repeatcount=0..800}] at @s run function lobby:ray2


scoreboard objectives remove repeatcount



