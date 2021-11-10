
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={drawing=23,ownedby=1},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=mascot,scores={drawing=23,ownedby=2},limit=1] run tag @s add pick

execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={drawing=23,ownedby=2},limit=1] run tag @s add pick
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=mascot,scores={drawing=23,ownedby=1},limit=1] run tag @s add pick



scoreboard players set @e[tag=pick] drawing 20
tag @e remove pick