execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
execute at @s anchored eyes if block ^ ^ ^0.1 #gamedata:transparent if block ^ ^ ^0.6 #gamedata:transparent anchored feet run tp @s ^ ^ ^0.1
execute at @s unless block ~ ~ ~ #gamedata:transparent run tp @s ~ ~0.1 ~
#一格
summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["airborne","summon"],Potion:CBC,Age:0,Duration:10000,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
scoreboard players set @e[tag=summon] healing 10
tag @e remove summon
execute at @s positioned ^ ^ ^ positioned ~ ~1.4 ~ run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a[distance=0.1..]
execute at @s positioned ^ ^ ^4 positioned ~ ~1.4 ~ run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @s
execute at @s if entity @a[distance=0.1..2] run scoreboard players add @s combo 1
execute at @s if entity @a[distance=0.1..2] run scoreboard players set @s combotime 30
execute at @s as @a[distance=0.1..2] run scoreboard players add @s dmgtaking 20
execute at @s if entity @e[tag=landmark,distance=0.1..2] run scoreboard players add @s combo 1
execute at @s if entity @e[tag=landmark,distance=0.1..2] run scoreboard players set @s combotime 30
execute at @s as @e[tag=landmark,distance=0.1..2] run scoreboard players add @s dmgtaking 20
execute at @s as @e[tag=landmark,distance=0.1..2] run effect give @s instant_damage 1 0 true