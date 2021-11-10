tag @s add 123
execute as @e[tag=t_card,scores={handorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add count
execute store result score @s handcardcount if entity @e[tag=count]
execute as @e[tag=t_card,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute as @e[tag=targetcard,scores={cardorder=1}] run tag @s add drawn
scoreboard players reset @e[tag=drawn] cardorder
scoreboard players operation @e[tag=drawn] handorder = @e[tag=123] handcardcount
scoreboard players add @e[tag=drawn] handorder 1
scoreboard players remove @e[tag=!drawn,tag=targetcard] cardorder 1
tag @e remove targetcard
tag @e remove count
tag @e remove drawn
tag @s remove 123