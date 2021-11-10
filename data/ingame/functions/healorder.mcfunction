execute as @e[tag=minion,scores={healing=10,dying=1..}] run scoreboard players reset @s healtaken
execute as @e[tag=minion,scores={healing=10,dying=1..}] run scoreboard players reset @s healing

execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={healing=10,dying=0,ownedby=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={healing=10,dying=0,ownedby=2},limit=1] run tag @s add pick


execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={healing=10,dying=0,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={healing=10,dying=0,ownedby=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={healing=10,dying=0,ownedby=1},limit=1] run tag @s add pick


scoreboard players set @e[tag=pick] healing 9
tag @e remove pick