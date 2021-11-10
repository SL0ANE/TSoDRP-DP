
scoreboard players set @s recover 0
scoreboard players set @s hp 1

#tag @s add 123
#execute if entity @s at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","summon","display","toughdisplay"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:1b}
#execute if entity @s run setblock 2 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
#execute as @e[tag=summon,tag=toughdisplay] at @s run data modify entity @s CustomName set from block 2 0 0 Text1
#scoreboard players set @e[tag=summon] waiting 15
#tag @s remove 123
#tag @e remove summon
#setblock 2 0 0 air


playsound minecraft:entity.ravager.roar block @a[tag=ingame] ~ ~ ~ 2 1.6 1
