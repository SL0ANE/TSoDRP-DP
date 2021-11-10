summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"监狱特效\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["effect","jail","summon2","summon3"],Invisible:1,DisabledSlots:2039583,Rotation:[0f,0f],Pose:{Head:[0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:cyan_dye",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[tag=minion,scores={minioncode=1}] run scoreboard players set @e[tag=summon2] targetcode 1
execute if entity @s[tag=minion,scores={minioncode=2}] run scoreboard players set @e[tag=summon2] targetcode 2
execute if entity @s[tag=minion,scores={minioncode=3}] run scoreboard players set @e[tag=summon2] targetcode 3
execute if entity @s[tag=minion,scores={minioncode=4}] run scoreboard players set @e[tag=summon2] targetcode 4
execute if entity @s[tag=minion,scores={minioncode=5}] run scoreboard players set @e[tag=summon2] targetcode 5
execute if entity @s[tag=minion,scores={minioncode=6}] run scoreboard players set @e[tag=summon2] targetcode 6
execute if entity @s[tag=mascot,scores={ownedby=1}] run scoreboard players set @e[tag=summon2] targetcode 7
execute if entity @s[tag=mascot,scores={ownedby=2}] run scoreboard players set @e[tag=summon2] targetcode 8
scoreboard players set @e[tag=summon2] waiting 50
tag @e remove summon2