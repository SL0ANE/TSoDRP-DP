execute as @e[tag=carduser] run tag @s add 593

#execute as @e[tag=mascot] run function ingame:checkhand

execute as @e[tag=beingused,tag=spell,tag=!invalid,tag=!removed] unless score @s handorder matches 1.. unless score @s cardorder matches 1.. at @s run function ingame:discard
execute as @e[tag=beingused,tag=invalid,tag=!removed] unless score @s handorder matches 1.. unless score @s cardorder matches 1.. at @s run function ingame:discard

scoreboard players add @e[tag=carduser,tag=mascot] roundusedcard 1
execute if entity @e[tag=beingused,tag=environment] run scoreboard players add @e[tag=carduser,tag=mascot] roundusedenv 1
execute if entity @e[tag=beingused,tag=spell] run scoreboard players add @e[tag=carduser,tag=mascot] roundusedspell 1
execute if entity @e[tag=beingused,tag=trap] run scoreboard players add @e[tag=carduser,tag=mascot] roundusedtrap 1
scoreboard players add @e[tag=carduser,tag=mascot] totalusedcard 1
execute if entity @e[tag=beingused,tag=environment] run scoreboard players add @e[tag=carduser,tag=mascot] totalusedenv 1
execute if entity @e[tag=beingused,tag=spell] run scoreboard players add @e[tag=carduser,tag=mascot] totalusedspell 1
execute if entity @e[tag=beingused,tag=trap] run scoreboard players add @e[tag=carduser,tag=mascot] totalusedtrap 1
tag @e remove beingused
tag @e remove carduser
tag @e remove cardtarget
tag @e remove pickedtarget

execute as @e[tag=cardcaster] unless score @s cardcasting matches 1.. run kill @s
execute as @e[tag=na_trap] run tag @s add trapcaster
execute as @e[tag=na_trap] run tag @s add caster2
execute as @e[tag=na_trap] run tag @s remove na_trap
execute as @e[tag=na] run tag @s add normalcaster2
execute as @e[tag=na] run tag @s add caster2
execute as @e[tag=na] run tag @s remove na
execute as @e[tag=na3] run tag @s add normalcaster3
execute as @e[tag=na3] run tag @s add caster3
execute as @e[tag=na3] run tag @s remove na3
execute as @e[tag=specialna] run scoreboard players set @s recover -1
execute as @e[tag=specialna] run tag @s add specialcaster2
execute as @e[tag=specialna] run tag @s add caster2
execute as @e[tag=specialna] run tag @s remove specialna

tag @e remove invalid
tag @e remove 593
tag @e remove 759