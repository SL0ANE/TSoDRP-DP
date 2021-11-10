tag @s add drawer
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=drawer,limit=1] ownedby run tag @s add 112
tag @e[tag=card,tag=112,tag=forcedraw,sort=random,limit=1] add drawn

execute unless entity @e[tag=drawn] run tag @e[tag=card,scores={cardorder=1},tag=112,limit=1] add drawn



scoreboard players operation @e[tag=drawn] ownedby = @e[tag=drawer,limit=1] ownedby

execute as @e[scores={cardorder=1..},tag=112,tag=!drawn] if score @s cardorder > @e[tag=drawn,limit=1] cardorder run scoreboard players remove @s cardorder 1
scoreboard players reset @e[tag=drawn] cardorder


scoreboard players operation @e[tag=drawn] handorder = @s handcardcount
scoreboard players add @e[tag=drawn] handorder 1

function ingame:checkhand


tag @e[tag=drawn] remove forcedraw

tag @e remove drawn
tag @s remove drawer
tag @e remove autocast2


tag @e remove 112