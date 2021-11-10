


execute as @e[tag=minion,tag=mute,scores={casting2=25}] run scoreboard players reset @s casting2
execute as @e[tag=!double_casting,tag=minion,tag=casted,scores={casting2=25}] run scoreboard players reset @s casting2
execute as @e[tag=!double_casting,tag=minion,tag=casted2,scores={casting2=25}] run scoreboard players reset @s casting2



execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={casting2=25,ownedby=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={casting2=25,ownedby=2},limit=1] run tag @s add pick


execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=2,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=1,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=2,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=1,minionboard=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=2,minionboard=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=minion,scores={casting2=25,ownedby=1,minionboard=3},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={casting2=25,ownedby=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={casting2=25,ownedby=1},limit=1] run tag @s add pick


scoreboard players set @e[tag=pick] casting2 23
tag @e remove pick