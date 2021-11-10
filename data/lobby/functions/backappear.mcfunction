execute as @e[tag=back] if score @s ownedby = @a[tag=click,limit=1] playernumber run kill @s
summon minecraft:armor_stand ~-7 ~-2 ~5 {CustomName:"[{\"text\":\"返回\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word","summon"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
#字-返回
summon minecraft:armor_stand ~-7 ~-2.5 ~5 {CustomName:"[{\"text\":\"\",\"color\":\"green\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["button","back","summon"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b}
#返回按钮
scoreboard players operation @e[tag=summon] ownedby = @s playernumber

tag @e[tag=summon] remove summon