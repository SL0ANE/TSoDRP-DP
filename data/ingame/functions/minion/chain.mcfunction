tag @s add 283
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,tag=chain,tag=!283,scores={recover=-1,ownedby=1},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,tag=chain,tag=!283,scores={recover=-1,ownedby=2},limit=1] run tag @s add pick

execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,tag=chain,tag=!283,scores={recover=-1,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,tag=chain,tag=!283,scores={recover=-1,ownedby=2},limit=1] run tag @s add pick
execute if entity @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,tag=chain,tag=!283,scores={recover=-1,ownedby=1},limit=1] run tag @s add pick


tag @e[tag=pick] add chaintarget
tag @s remove 283
tag @e remove pick