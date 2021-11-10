tag @s add 7419
summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"抓痕特效\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","scratch","summon2","summon3"],CustomNameVisible:0b,Duration:10000s}
execute as @e[tag=summon2] at @s facing entity @e[tag=7419,limit=1] feet run tp ~ ~ ~
execute if entity @s[tag=minion,scores={minioncode=1}] run scoreboard players set @e[tag=summon2] targetcode 1
execute if entity @s[tag=minion,scores={minioncode=2}] run scoreboard players set @e[tag=summon2] targetcode 2
execute if entity @s[tag=minion,scores={minioncode=3}] run scoreboard players set @e[tag=summon2] targetcode 3
execute if entity @s[tag=minion,scores={minioncode=4}] run scoreboard players set @e[tag=summon2] targetcode 4
execute if entity @s[tag=minion,scores={minioncode=5}] run scoreboard players set @e[tag=summon2] targetcode 5
execute if entity @s[tag=minion,scores={minioncode=6}] run scoreboard players set @e[tag=summon2] targetcode 6
execute if entity @s[tag=mascot,scores={ownedby=1}] run scoreboard players set @e[tag=summon2] targetcode 7
execute if entity @s[tag=mascot,scores={ownedby=2}] run scoreboard players set @e[tag=summon2] targetcode 8
scoreboard players reset temp number
scoreboard players set @e[tag=summon2] waiting 3
tag @e remove summon2
tag @s remove 7419