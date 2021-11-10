execute as @e[tag=minion2,tag=chosen] if score @s playerid = @a[tag=click,limit=1] playerid run tag @s add targetminion2
execute as @e[tag=p_card,tag=chosen] if score @s playerid = @a[tag=click,limit=1] playerid run tag @s add targetcard
summon minecraft:armor_stand -174 19.1 44 {CustomName:"[{\"text\":\"英歌集结\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["yuepunk","10","p_card","summon","need_no_target","spell"],Invisible:1,DisabledSlots:2039583,Rotation:[-90f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:11100}}]}

execute as @e[tag=summon] run data modify entity @s ArmorItems.[3].tag.Tags set from entity @s Tags
execute as @e[tag=summon] run data modify entity @s ArmorItems.[3].tag.display.Name set from entity @s CustomName
execute as @e[tag=summon,tag=minion2] run function lobby:display/minionset3
execute as @e[tag=summon,tag=minion2] run scoreboard players operation @s hp = @s basic_hp
execute as @e[tag=summon,tag=minion2] run scoreboard players operation @s attack = @s basic_attack
execute as @e[tag=summon,tag=p_card] run function ingame:cardcost
execute as @e[tag=summon,tag=p_card] store result score @s cardid run data get entity @s ArmorItems.[3].tag.CustomModelData 1

summon minecraft:armor_stand -174 17.1 44 {CustomName:"[{\"text\":\"←\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["pageup","button","switchpage","gamemob","room1","display"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}
#summon minecraft:armor_stand -174 17.1 52 {CustomName:"[{\"text\":\"→\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["pagedown","button","switchpage","gamemob","room1","display"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:1b}


tag @e[tag=summon] add display
tag @e[tag=summon] add gamemob
tag @e[tag=summon] add button
execute as @e[tag=summon] at @s run tp @s ~ ~ ~ ~180 ~
tag @e remove targetminion2
tag @e remove targetcard
tag @e remove summon