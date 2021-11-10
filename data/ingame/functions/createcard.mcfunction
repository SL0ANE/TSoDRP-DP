tag @s add running2

execute as @s[tag=card] run tag @s add runtarget
execute as @s[tag=p_card] run tag @s add runtarget
execute if entity @s[tag=chosen] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","summon2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f,0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=card] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","summon2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f,0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=p_card] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"——\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["summon","summon2"],Invisible:1,DisabledSlots:2039583,Rotation:[0f,0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,Small:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{}]}

data modify entity @e[tag=summon,limit=1] ArmorItems set from entity @e[tag=runtarget,limit=1] ArmorItems
data modify entity @e[tag=summon,limit=1] HandItems set from entity @e[tag=runtarget,limit=1] HandItems
data modify entity @e[tag=summon,limit=1] CustomName set from entity @e[tag=runtarget,limit=1] CustomName
data modify entity @e[tag=summon,limit=1] Tags prepend from entity @e[tag=runtarget,limit=1] Tags.[]


tag @e[tag=summon] remove selected
tag @e[tag=summon] remove running
tag @e[tag=summon] remove running2
tag @e[tag=summon] remove run_target
tag @e[tag=summon] remove beingused
tag @e[tag=summon] remove temporary
tag @e[tag=summon] remove autocast
tag @e[tag=summon] remove summon3
tag @e[tag=summon] add derive

scoreboard players operation @e[tag=summon] ownedby = @e[tag=running2] ownedby

tag @e remove runtarget

scoreboard players set @e[tag=summon] handorder 0
execute as @e[tag=summon] run function ingame:cardcost
execute as @e[tag=summon] run function ingame:carddamage
execute as @e[tag=summon] run scoreboard players operation @s truecost = @s basic_cost
execute as @e[tag=summon] run scoreboard players operation @s cost = @s basic_cost
execute as @e[tag=summon] run function ingame:getcardid

tag @e remove summon
tag @s remove running2