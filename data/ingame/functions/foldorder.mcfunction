
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=card,scores={folding=23,ownedby=1},sort=random,limit=1] run function ingame:foldorder2
execute as @e[tag=mascot,tag=onturn,scores={ownedby=2}] unless entity @e[tag=pick] as @e[tag=card,scores={folding=23,ownedby=2},sort=random,limit=1] run function ingame:foldorder2

execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=card,scores={folding=23,ownedby=2},sort=random,limit=1] run function ingame:foldorder2
execute as @e[tag=mascot,tag=onturn,scores={ownedby=1}] unless entity @e[tag=pick] as @e[tag=card,scores={folding=23,ownedby=1},sort=random,limit=1] run function ingame:foldorder2



scoreboard players set @e[tag=pick] folding 20
tag @e remove pick