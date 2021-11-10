#这条指令必须在执行前设置targetmascot
tag @s add running2
execute unless score @s ownedby matches 1.. run scoreboard players operation @s ownedby = @e[tag=targetmascot,limit=1] ownedby
function ingame:getcardid
playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 3 1 1
execute if score @s cardorder matches 1.. as @e[tag=card,scores={cardorder=1..},tag=!running2] if score @s ownedby = @e[tag=running2,limit=1] ownedby run tag @s add targetcards
execute as @e[tag=targetcards] if score @s cardorder > @e[tag=running2,limit=1] cardorder run scoreboard players remove @s cardorder 1
execute if score @s dcpileorder matches 1.. as @e[tag=card,scores={dcpileorder=1..},tag=!running2] if score @s ownedby = @e[tag=running2,limit=1] ownedby run tag @s add targetcards2
execute as @e[tag=targetcards2] if score @s dcpileorder > @e[tag=running2,limit=1] dcpileorder run scoreboard players remove @s dcpileorder 1
#scoreboard players reset @s damage
function ingame:carddamage
#data merge entity @s {Pose:{Head:[0.0f,0.0f]}}

execute as @e[tag=targetmascot] if score @s handcardcount < @s handcardlimit run tag @s add pass2
execute if entity @e[tag=pass2] run scoreboard players operation @s handorder = @e[tag=pass2] handcardcount
execute if entity @e[tag=pass2] run scoreboard players add @s handorder 1
execute if entity @e[tag=pass2] run scoreboard players reset @s usecardorder
execute if entity @e[tag=pass2] run scoreboard players reset @s[scores={cardorder=1..}] cardorder
execute if entity @e[tag=pass2] run scoreboard players reset @s[scores={dcpileorder=1..}] dcpileorder

execute if entity @e[tag=pass2] run scoreboard players operation @s ownedby = @e[tag=targetmascot,limit=1] ownedby
execute as @e[tag=mascot] run function ingame:checkhand
function ingame:display/hand
execute unless entity @e[tag=pass2] run kill @s
execute if entity @e[tag=pass2] run tag @s remove removed
execute if entity @e[tag=pass2] run playsound minecraft:ui.stonecutter.take_result block @a[tag=ingame] ~ ~ ~ 3 1 1
tag @s remove summon
tag @e remove targetcards
tag @e remove targetcards2
tag @s remove running2
tag @e remove pass2
