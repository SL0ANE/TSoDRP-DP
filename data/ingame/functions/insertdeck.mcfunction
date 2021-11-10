#这条指令必须在执行前设置targetmascot

tag @s add running
scoreboard players reset @s usecardorder
execute unless score @s ownedby matches 1.. run scoreboard players operation @s ownedby = @e[tag=targetmascot,limit=1] ownedby
function ingame:getcardid
execute as @e[tag=card,scores={cardorder=1..},tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add count
execute store result score count system if entity @e[tag=count]
execute if score @s cardorder matches 1.. as @e[tag=card,scores={cardorder=1..},tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards
execute if score count system matches ..31 as @e[tag=targetcards] if score @s cardorder > @e[tag=running,limit=1] cardorder run scoreboard players remove @s cardorder 1
execute if score @s dcpileorder matches 1.. as @e[tag=card,scores={dcpileorder=1..},tag=!running] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards2
execute as @e[tag=targetcards2] if score @s dcpileorder > @e[tag=running,limit=1] dcpileorder run scoreboard players remove @s dcpileorder 1
#scoreboard players reset @s damage
function ingame:carddamage
scoreboard players operation @s ownedby = @e[tag=targetmascot,limit=1] ownedby
execute as @e[tag=deck] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetdeck
scoreboard players reset @s[scores={dcpileorder=1..}] dcpileorder
scoreboard players reset @s[scores={handorder=1..}] handorder
scoreboard players reset @s[scores={cardorder=1..}] cardorder
execute as @e[tag=card,tag=!running,scores={cardorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards3
execute if entity @e[tag=targetcards3] run scoreboard players operation @s cardorder = @e[tag=targetcards3,limit=1,sort=random] cardorder
execute unless entity @e[tag=targetcards3] run scoreboard players set @s cardorder 1
execute as @e[tag=targetcards3,tag=!running] if score @s cardorder >= @e[tag=running,limit=1] cardorder run scoreboard players add @s cardorder 1

execute if score @s basic_cost matches 0.. run scoreboard players operation @s truecost = @s basic_cost
execute if score @s basic_cost matches 0.. run scoreboard players set @s truehpcost 0
execute if score @s basic_cost matches ..-1 run scoreboard players set @s truehpcost 0
execute if score @s basic_cost matches ..-1 run scoreboard players operation @s truehpcost -= @s basic_cost

#execute as @e[tag=mascot] run function ingame:checkhand
#execute as @e[tag=targetdeck] run function ingame:setdeck



execute if score count system matches 32.. run kill @s
scoreboard players reset count system

tag @e remove targetdeck
tag @e remove targetcards3
tag @e remove targetcards2
tag @e remove targetcards
tag @s remove running
tag @s remove summon
tag @s remove removed
tag @e remove count