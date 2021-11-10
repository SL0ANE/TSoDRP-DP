scoreboard players set @s switching 11
execute as @e[tag=mascot] if score @s ownedby = @a[tag=click,limit=1] playernumber run scoreboard players remove @s mana 1
tag @s add switcher
execute unless entity @e[tag=switched] as @e[tag=minion,scores={minionboard=2}] if score @s ownedby = @e[tag=switcher,limit=1] ownedby run tag @s add switched