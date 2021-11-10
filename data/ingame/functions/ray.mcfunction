

scoreboard players add @s repeatcount 1


tag @s add hitwall
execute if block ^0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^-0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^-0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if block ^-0.15 ^ ^0.1 #gamedata:transparentwithbarrier if block ^ ^-0.15 ^0.1 #gamedata:transparentwithbarrier run tag @s remove hitwall
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=button2,tag=minion,limit=1,sort=nearest] add hit
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-1.5 ~-0.5 run tag @e[dx=0,dy=0.45,dz=0,tag=mascot,limit=1,sort=nearest] add hit
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=dcpile,limit=1,sort=nearest] add hit
execute if entity @s[tag=datacheck] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=deck,limit=1,sort=nearest] add hit


execute if entity @s[tag=search,tag=!card] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=button2,tag=endround,limit=1,sort=nearest] add hit
execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=button2,tag=minion,limit=1,sort=nearest] add hit
execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-1.5 ~-0.5 run tag @e[dx=0,dy=0.45,dz=0,tag=mascot,limit=1,sort=nearest] add hit
execute if entity @s[tag=search] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=card,tag=discovered,limit=1,sort=nearest] add hit
execute if entity @s[tag=s_dp] unless entity @e[tag=hit] positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=card,tag=discovered,limit=1,sort=nearest] add hit

#发现牌

execute as @s[tag=s_special] as @e[tag=hit] run function ingame:handcard/rayspecial
#根据特殊数值
execute as @s[tag=s_enemy] as @e[tag=hit] if score @s ownedby = @e[tag=click,limit=1] playernumber run tag @s add deny
#检测敌方
execute as @s[tag=s_ally] as @e[tag=hit] unless score @s ownedby = @e[tag=click,limit=1] playernumber run tag @s add deny
#检测己方
execute as @s[tag=s_minion] as @e[tag=hit] if entity @s[tag=!minion] run tag @s add deny
#检测随从
execute as @s[tag=s_mascot] as @e[tag=hit] if entity @s[tag=!mascot] run tag @s add deny
#检测牌手
execute as @s[tag=s_dead] as @e[tag=hit] if score @s recover matches -1 run tag @s add deny
#检测状态：已阵亡
execute as @s[tag=s_live] as @e[tag=hit] if score @s recover matches 1.. run tag @s add deny
#检测状态：存活
execute as @s[tag=s_not_entered] as @e[tag=hit] if score @s recover matches -1.. run tag @s add deny
#检测状态：未登场
execute as @s[tag=s_hurt] as @e[tag=hit] if score @s hp >= @s hplimit run tag @s add deny
#检测状态：已受伤
execute as @s[tag=s_unhurt] as @e[tag=hit] if score @s hp < @s hplimit run tag @s add deny
#检测状态：未受伤
execute as @s[tag=!ignoreimmune] as @e[tag=hit] if entity @s[tag=immune] run tag @s add deny
#检测状态：目标具有魔免
execute as @s[tag=!s_not_entered] as @e[tag=hit] if score @s recover matches -2 run tag @s add deny
#检测状态：登场

execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=hit] run tag @s add hitwall


particle minecraft:dust 1 1 1 0.3 ~ ~ ~ 0 0 0 0 1 force @a[tag=click]
tp @s[tag=!hitwall] ^ ^ ^0.1



execute as @s[tag=!hitwall,scores={repeatcount=0..800}] at @s run function ingame:ray


scoreboard objectives remove repeatcount



