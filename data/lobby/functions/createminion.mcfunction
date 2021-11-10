tag @s add running2

execute as @s[tag=minion2] run tag @s add runtarget

summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","summon2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:0b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:516}}]}

item replace entity @e[tag=summon] armor.head from entity @s armor.head

data modify entity @e[tag=summon,limit=1] CustomName set from entity @e[tag=runtarget,limit=1] CustomName
data modify entity @e[tag=summon,limit=1] Tags prepend from entity @e[tag=runtarget,limit=1] Tags.[]

tag @e[tag=summon] remove selected
tag @e[tag=summon] remove running
tag @e[tag=summon] remove running2
tag @e[tag=summon] remove run_target


tag @e remove runtarget


execute as @e[tag=summon] run function lobby:display/minionset3
execute as @e[tag=summon] run scoreboard players operation @s hp = @s basic_hp
execute as @e[tag=summon] run scoreboard players operation @s attack = @s basic_attack
execute as @e[tag=summon] run scoreboard players operation @s truecost = @s basic_cost
execute as @e[tag=summon] run scoreboard players set @s[scores={stacklimit=1..}] stackcount 0

tag @e remove summon
tag @s remove running2


