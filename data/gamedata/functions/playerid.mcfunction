scoreboard players add system playerid 1
scoreboard players operation @s playerid = system playerid
summon minecraft:marker -203 35 49 {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","reportholder"],Invisible:1,DisabledSlots:2039583,Rotation:[180f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{}]}
scoreboard players operation @e[tag=summon] playerid = @s playerid
tag @e remove summon