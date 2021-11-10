

execute as @s[tag=ownedby1,tag=t_mascot] at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","tutorial","word2","t_data","t_mascotdata","ownedby1"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
execute as @s[tag=ownedby2,tag=t_mascot] at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","tutorial","word2","t_data","t_mascotdata","ownedby2"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}

execute as @s[tag=ownedby1,tag=t_mascot] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomName:"[{\"text\":\"凯文博士\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","tutorial","word2","t_name","t_mascotname","ownedby1"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}
execute as @s[tag=ownedby2,tag=t_mascot] at @s run summon minecraft:armor_stand ~ ~1 ~ {CustomName:"[{\"text\":\"你\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","tutorial","word2","t_name","t_mascotname","ownedby2"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:0b}

execute as @e[tag=summon,tag=t_data,tag=ownedby1] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=summon,tag=t_data,tag=ownedby2] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=summon,tag=t_name,tag=ownedby1] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=summon,tag=t_name,tag=ownedby2] run data merge entity @s {CustomNameVisible:1b}
scoreboard players set @e[tag=summon,tag=ownedby1,tag=t_mascotdata] ownedby -1
scoreboard players set @e[tag=summon,tag=ownedby2,tag=t_mascotdata] ownedby -2
scoreboard players set @e[tag=summon,tag=ownedby1,tag=t_mascotname] ownedby -1
scoreboard players set @e[tag=summon,tag=ownedby2,tag=t_mascotname] ownedby -2

team leave @a
function lobby:tutorial/mascot.hpcheck
tag @e remove summon