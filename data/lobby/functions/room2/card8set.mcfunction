summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","p_card","button","chosen","summon3"],Invisible:1,DisabledSlots:2039583,Rotation:[-90f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:1}}]}
item replace entity @e[tag=summon] armor.head from block -224 18 35 container.16
execute as @e[tag=summon] run data modify entity @s CustomName set from block -224 18 35 Items.[{Slot:16b}].tag.display.Name
execute as @e[tag=summon] run data modify entity @s Tags append from block -224 18 35 Items.[{Slot:16b}].tag.Tags.[]
execute as @e[tag=summon] run function ingame:getcardid
execute as @e[tag=summon] run function ingame:cardcost
execute as @e[tag=summon] store result score @s cardid run data get entity @s ArmorItems.[3].tag.CustomModelData 1
scoreboard players set @e[tag=summon] cardboard 8
scoreboard players operation @e[tag=summon] playerid = @s playerid

tag @e remove summon
