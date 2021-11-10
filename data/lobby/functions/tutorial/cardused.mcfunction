
scoreboard players operation @e[tag=selectedcard] usecardorder = @e[tag=carduser] handcardcount
scoreboard players operation @e[tag=selectedcard] handcardposition = @e[tag=selectedcard] handorder
scoreboard players reset @e[tag=selectedcard] handorder
execute as @e[tag=selectedcard] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.4 0.4 0.4 0.01 30 force
execute as @e[tag=selectedcard] at @s run playsound minecraft:block.grindstone.use block @a ~ ~ ~ 3 2 1
execute as @e[tag=selectedcard] at @s run tp @s ~ ~1 ~
scoreboard players set t_pause3 system 0
scoreboard players add tutorial system 1
tag @s add t_usecardpass