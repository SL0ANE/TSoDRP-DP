summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"灾难特效\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","disaster","summon2","summon3"],CustomNameVisible:0b,Duration:10000s}
scoreboard players set @e[tag=summon2] waiting 60
tag @e remove summon2