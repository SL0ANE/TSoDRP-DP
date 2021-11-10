
execute as @e[tag=caster2,tag=mute,scores={cardcasting2=25}] run scoreboard players reset @s cardcasting2
execute as @e[tag=caster2,tag=casted,scores={cardcasting2=25}] run scoreboard players reset @s cardcasting2
execute as @e[tag=caster2,tag=casted2,scores={cardcasting2=25}] run scoreboard players reset @s cardcasting2

execute as @e[scores={cardcasting2=25}] run function ingame:cardcast2order2


scoreboard players set @e[tag=pick] cardcasting2 20
tag @e remove pick