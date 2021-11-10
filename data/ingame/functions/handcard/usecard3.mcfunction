
tag @e[tag=selectedcard] add beingused

execute as @e[tag=mascot] if score @s ownedby = @e[tag=click,limit=1] playernumber run scoreboard players set @s usingcard 20
execute as @e[tag=mascot] if score @s ownedby = @e[tag=click,limit=1] playernumber run tag @s add carduser
execute as @e[tag=mascot] if score @s ownedby = @e[tag=click,limit=1] playernumber run scoreboard players operation @s mana -= @e[tag=selectedcard,tag=spendmana,limit=1] cost
execute as @e[tag=mascot] if score @s ownedby = @e[tag=click,limit=1] playernumber run scoreboard players operation @s hp -= @e[tag=selectedcard,tag=spendhp,limit=1] hpcost


scoreboard players operation @e[tag=selectedcard] usecardorder = @e[tag=carduser] handcardcount
scoreboard players operation @e[tag=selectedcard] handcardposition = @e[tag=selectedcard] handorder
scoreboard players reset @e[tag=selectedcard] handorder

execute as @e[tag=selectedcard] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.4 0.4 0.4 0.01 30 force
execute as @e[tag=selectedcard] at @s run playsound minecraft:block.grindstone.use block @a[tag=ingame] ~ ~ ~ 3 2 1
execute as @e[tag=selectedcard] at @s if score system arena matches 1 run tp @s ~ ~2 ~
execute as @e[tag=selectedcard] at @s unless score system waiting matches 5.. run scoreboard players set system waiting 5
#execute as @e[tag=carduser] at @s run function ingame:checkhand

tag @e[tag=hit] add cardtarget
tag @e[tag=hit] add pickedtarget

tag @e remove summon
