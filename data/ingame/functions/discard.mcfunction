tag @s add 123
scoreboard players reset @s usecardorder
execute as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add 234
scoreboard players add @e[tag=234] dcpileorder 1
scoreboard players set @s dcpileorder 1
execute as @e[tag=deck] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetdeck
execute as @e[tag=card,tag=!123,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcards
execute as @e[tag=targetcards] if score @s cardorder > @e[tag=123,limit=1] cardorder run scoreboard players remove @s cardorder 1
#scoreboard players reset @s damage

execute if score @s basic_cost matches 0.. run scoreboard players operation @s truecost = @s basic_cost
execute if score @s basic_cost matches 0.. run scoreboard players set @s truehpcost 0
execute if score @s basic_cost matches ..-1 run scoreboard players set @s truehpcost 0
execute if score @s basic_cost matches ..-1 run scoreboard players operation @s truehpcost -= @s basic_cost


execute as @e[tag=dcpile] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetdcpile

execute as @s at @e[tag=targetdcpile] rotated ~ 0 positioned ^ ^ ^0.3 run tp @s ~ ~-0.7 ~
#data merge entity @s {Pose:{Head:[90.0f,0.0f]}}
#data modify entity @s Pose.Head[1] set from entity @e[tag=targetdcpile,limit=1] Rotation[0]





scoreboard players reset @s handorder
scoreboard players reset @s cardorder
#execute as @e[tag=mascot] at @s run function ingame:checkhand
#execute as @e[tag=targetdeck] run function ingame:setdeck
execute as @e[tag=targetdcpile] run function ingame:setdcpile
tag @e remove targetdcpile
tag @e remove targetcards
tag @s remove 123
tag @e remove 234

execute if entity @s[tag=derive] run function ingame:burncard_silent