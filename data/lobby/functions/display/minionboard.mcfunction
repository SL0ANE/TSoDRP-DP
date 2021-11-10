
execute as @e[tag=minion,tag=chosen] if score @s ownedby = @a[tag=click,limit=1] playernumber run tag @s add count
execute store result score @s minionboard if entity @e[tag=count]
function lobby:display/minionboard2

tag @e[tag=count] remove count