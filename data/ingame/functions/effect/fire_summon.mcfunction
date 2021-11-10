summon minecraft:marker ~ ~ ~ {CustomName:"[{\"text\":\"火焰特效\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","fire","summon2","summon3"],CustomNameVisible:0b,Duration:10000s}
scoreboard players set @e[tag=summon2] waiting 15
tag @e remove summon2