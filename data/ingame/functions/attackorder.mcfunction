execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={attacking=40,ownedby=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={attacking=40,ownedby=2},limit=1] run tag @s add pick

execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={attacking=40,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={attacking=40,ownedby=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={attacking=40,ownedby=1},limit=1] run tag @s add pick



scoreboard players set @e[tag=pick] attacking 38
tag @e remove pick