tag @s add 123

execute if entity @s[tag=mascot1] run tag @e[tag=mascot,scores={ownedby=1}] add target
execute if entity @s[tag=mascot2] run tag @e[tag=mascot,scores={ownedby=2}] add target
execute if entity @s[tag=minion1] run tag @e[tag=minion,scores={minioncode=1}] add target
execute if entity @s[tag=minion2] run tag @e[tag=minion,scores={minioncode=2}] add target
execute if entity @s[tag=minion3] run tag @e[tag=minion,scores={minioncode=3}] add target
execute if entity @s[tag=minion4] run tag @e[tag=minion,scores={minioncode=4}] add target
execute if entity @s[tag=minion5] run tag @e[tag=minion,scores={minioncode=5}] add target
execute if entity @s[tag=minion6] run tag @e[tag=minion,scores={minioncode=6}] add target

execute if score @s waiting matches 55 positioned ~2.2 ~3 ~0.3 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 55 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 52 positioned ~-0.9 ~3 ~0.7 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 52 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 48 positioned ~1.6 ~3 ~-1.2 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 48 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 45 positioned ~-0.6 ~3 ~-0.7 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 45 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 41 positioned ~2.1 ~3 ~-0.6 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 41 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 36 positioned ~1.9 ~3 ~0.3 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 36 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 31 positioned ~-0.2 ~3 ~0.4 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 31 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 29 positioned ~-0.5 ~3 ~-1 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 29 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 25 positioned ~1.2 ~3 ~-0.7 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 25 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 23 positioned ~-0.5 ~3 ~0.9 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 23 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 19 positioned ~2.1 ~3 ~0.7 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 19 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 15 positioned ~-1.2 ~3 ~-0.9 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 15 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 12 positioned ~1.8 ~3 ~-1.2 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 12 run scoreboard players set @e[tag=summon2] waiting 15

execute if score @s waiting matches 8 positioned ~-0.6 ~3 ~1.4 run summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难粒子\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster_particle","summon2"],Rotation:[0f,75f],CustomNameVisible:0b,Duration:10000s}
execute if score @s waiting matches 8 run scoreboard players set @e[tag=summon2] waiting 15

execute as @e[tag=summon2] run data modify entity @s Rotation.[0] set from entity @e[tag=centre,limit=1] Rotation.[0]
execute if score @s waiting matches 1 as @e[tag=target] run function ingame:destroy

execute if score @s waiting matches 1 run kill @s
execute if score @s waiting matches 5.. run scoreboard players set system waiting 1
tag @e remove summon2
tag @e remove target
tag @s remove 123