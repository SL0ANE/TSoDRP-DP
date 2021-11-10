tag @s add drawer
execute as @e[tag=t_card,scores={cardorder=1..}] if score @s ownedby = @e[tag=drawer,limit=1] ownedby run tag @s add 112
tag @e[tag=t_card,tag=112,tag=forcedraw,sort=random,limit=1] add drawn

execute unless entity @e[tag=drawn] run tag @e[tag=t_card,scores={cardorder=1},tag=112,limit=1] add drawn

#execute as @e[tag=drawn,tag=castwhendrawn] run function ingame:castwhendrawn

scoreboard players operation @e[tag=drawn] ownedby = @e[tag=drawer,limit=1] ownedby

execute as @e[tag=t_card,scores={cardorder=1..},tag=112,tag=!drawn] if score @s cardorder > @e[tag=drawn,limit=1] cardorder run scoreboard players remove @s cardorder 1
scoreboard players reset @e[tag=drawn] cardorder


scoreboard players operation @e[tag=drawn,tag=!autocast2] handorder = @s handcardcount
scoreboard players add @e[tag=drawn,tag=!autocast2] handorder 1
#function ingame:checkhand


playsound minecraft:ui.loom.select_pattern block @a[tag=tutorial] ~ ~ ~ 3 1.6 1

tag @e[tag=drawn] remove forcedraw


tag @s remove drawer
tag @e remove autocast2

tag @e remove drawn
tag @e remove 112