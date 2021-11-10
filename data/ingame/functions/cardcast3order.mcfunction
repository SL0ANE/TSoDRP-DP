
execute as @e[tag=caster3,tag=mute,scores={cardcasting3=25}] run scoreboard players reset @s cardcasting3
execute as @e[tag=caster3,tag=casted,scores={cardcasting3=25}] run scoreboard players reset @s cardcasting3
execute as @e[tag=caster3,tag=casted2,scores={cardcasting3=25}] run scoreboard players reset @s cardcasting3

execute as @e[scores={cardcasting3=25}] run function ingame:cardcast3order2


scoreboard players set @e[tag=pick] cardcasting3 20
tag @e remove pick