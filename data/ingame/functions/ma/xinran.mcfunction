tag @s add xinran1
execute if score @e[tag=mascot,tag=onturn,limit=1] ownedby = @e[tag=xinran1,limit=1] ownedby as @e[tag=!xinran1,tag=!affected_xinran,tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=xinran1,limit=1] ownedby run tag @s add addtough
execute if score @e[tag=mascot,tag=onturn,limit=1] ownedby = @e[tag=xinran1,limit=1] ownedby as @e[tag=!xinran1,tag=!affected_xinran,tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=xinran1,limit=1] ownedby run scoreboard players set @s toughtime 2
execute if score @e[tag=mascot,tag=onturn,limit=1] ownedby = @e[tag=xinran1,limit=1] ownedby as @e[tag=!xinran1,tag=!affected_xinran,tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=xinran1,limit=1] ownedby run tag @s add affected_xinran


tag @s remove xinran1