#——————————slotmachine

execute unless score slotmachine system matches 1.. positioned -211 18 25 run function lobby:gambles/slotmachine
execute if score slotmachine system matches 1.. positioned -211 18 25 run function lobby:gambles/slotmachine2
#——————————slotmachine

#——————————fightbet
execute if score fightbet system matches 1 run function lobby:gambles/fightbet2
scoreboard players remove @e[type=blaze,scores={dying=1..}] dying 1
execute as @e[type=blaze,scores={dying=1}] at @s run tp @s ~ ~60 ~
kill @e[type=blaze,scores={dying=1}]
scoreboard players remove @e[type=snow_golem,scores={dying=1..}] dying 1
execute as @e[type=snow_golem,scores={dying=1}] at @s run tp @s ~ ~60 ~
kill @e[type=snow_golem,scores={dying=1}]
#——————————fightbet

#——————————lottery
execute if score lottery system matches 1.. run function lobby:gambles/lottery


#——————————lottery
