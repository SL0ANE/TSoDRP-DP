summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"冰霜特效\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","frost","summon2","summon3"],CustomNameVisible:0b,Duration:10000s}
execute if entity @s[tag=minion,scores={minioncode=1}] run scoreboard players set @e[tag=summon2] targetcode 1
execute if entity @s[tag=minion,scores={minioncode=2}] run scoreboard players set @e[tag=summon2] targetcode 2
execute if entity @s[tag=minion,scores={minioncode=3}] run scoreboard players set @e[tag=summon2] targetcode 3
execute if entity @s[tag=minion,scores={minioncode=4}] run scoreboard players set @e[tag=summon2] targetcode 4
execute if entity @s[tag=minion,scores={minioncode=5}] run scoreboard players set @e[tag=summon2] targetcode 5
execute if entity @s[tag=minion,scores={minioncode=6}] run scoreboard players set @e[tag=summon2] targetcode 6
execute if entity @s[tag=mascot,scores={ownedby=1}] run scoreboard players set @e[tag=summon2] targetcode 7
execute if entity @s[tag=mascot,scores={ownedby=2}] run scoreboard players set @e[tag=summon2] targetcode 8


tag @e remove summon2