execute as @s at @s positioned ~ ~0.85 ~ run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","tutorial","t_data","miniondata","summon2"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:1b}
execute as @s at @s positioned ~ ~0.5 ~ run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","tutorial","t_buffstorage","summon2"],Invisible:1,Small:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b}
scoreboard players operation @e[tag=summon2] ownedby = @s ownedby
scoreboard players operation @e[tag=summon2] minioncode = @s minioncode
tag @e remove summon2