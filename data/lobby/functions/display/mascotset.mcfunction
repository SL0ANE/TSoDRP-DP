execute as @a[scores={playernumber=1..2},tag=playing] run function lobby:display/mascotset2
function lobby:display/mascotset3





execute as @e[tag=ownedby1,tag=mascot,tag=summon2] at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","word2","data","mascotdata","ownedby1"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
execute as @e[tag=ownedby2,tag=mascot,tag=summon2] at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","word2","data","mascotdata","ownedby2"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}

execute as @e[tag=ownedby1,tag=mascot,tag=summon2] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","word2","name","mascotname","ownedby1"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
execute as @e[tag=ownedby2,tag=mascot,tag=summon2] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","word2","name","mascotname","ownedby2"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}

execute as @e[tag=summon,tag=data,tag=ownedby1] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=summon,tag=data,tag=ownedby2] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=summon,tag=name,tag=ownedby1] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=summon,tag=name,tag=ownedby2] run data merge entity @s {CustomNameVisible:1b}
scoreboard players set @e[tag=summon,tag=ownedby1,tag=mascotdata] ownedby 1
scoreboard players set @e[tag=summon,tag=ownedby2,tag=mascotdata] ownedby 2
scoreboard players set @e[tag=summon,tag=ownedby1,tag=mascotname] ownedby 1
scoreboard players set @e[tag=summon,tag=ownedby2,tag=mascotname] ownedby 2
scoreboard players set @e[tag=summon,tag=ownedby1,tag=mascot] ownedby 1
scoreboard players set @e[tag=summon,tag=ownedby2,tag=mascot] ownedby 2

team leave @a
execute as @e[tag=mascot] run function ingame:mascot/hpcheck
execute as @e[tag=mascot] run function ingame:mascot/name

tag @e remove summon
tag @e remove summon2
