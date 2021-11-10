tag @s add sorter
scoreboard players operation @s tempoorder = @s cardorder
scoreboard players add @s tempoorder 1
execute as @e[tag=234] if score @s cardorder = @e[tag=sorter,limit=1] tempoorder run tag @s add equal
execute unless entity @e[tag=equal] as @e[tag=234] if score @s cardorder > @e[tag=sorter,limit=1] cardorder run scoreboard players remove @s cardorder 1
execute as @e[tag=234] if score @s cardorder = @e[tag=sorter,limit=1] tempoorder run tag @s add equal
execute unless entity @e[tag=equal] run function ingame:sortdeck4
tag @s remove sorter