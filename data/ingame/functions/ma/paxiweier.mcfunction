tag @s add paxiweier1

execute unless score @e[tag=mascot,tag=onturn,limit=1] ownedby = @e[tag=paxiweier1,limit=1] ownedby as @e[tag=!affected_paxiweier,tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=paxiweier1,limit=1] ownedby run tag @s add addimmune
execute unless score @e[tag=mascot,tag=onturn,limit=1] ownedby = @e[tag=paxiweier1,limit=1] ownedby as @e[tag=!affected_paxiweier,tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=paxiweier1,limit=1] ownedby run scoreboard players set @s immunetime 2
execute unless score @e[tag=mascot,tag=onturn,limit=1] ownedby = @e[tag=paxiweier1,limit=1] ownedby as @e[tag=!affected_paxiweier,tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=paxiweier1,limit=1] ownedby run tag @s add affected_paxiweier



tag @s remove paxiweier1