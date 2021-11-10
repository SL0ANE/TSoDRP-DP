execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot

execute if score @s cardcasting matches 38 at @e[tag=carduser] as @e[tag=cardtarget] run function ingame:effect/buff_summon
execute if score @s cardcasting matches 38 run tag @e[tag=summon3] add puzzle
execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.1 0.4 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:block.respawn_anchor.set_spawn block @s ~ ~ ~ 3 2 1
execute if score @s cardcasting matches 38 as @e[tag=card,tag=gods,tag=4,tag=!forcedraw,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add drawtarget
execute if score @s cardcasting matches 38 run tag @e[tag=drawtarget] add forcedraw
execute if score @s cardcasting matches 38 if entity @e[tag=drawtarget] run scoreboard players add @e[tag=targetmascot] drawtime 1

execute if score @s cardcasting matches 38 unless entity @e[tag=drawtarget] run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"烈焰之剑\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["gods","4.1","derive","card","summon","need_target","spell","s_minion","s_live"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Small:1b,Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:51041}}]}

execute if score @s cardcasting matches 38 run scoreboard players set @e[tag=summon] truecost 1
execute if score @s cardcasting matches 38 as @e[tag=summon] run function ingame:inserthand


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[坚守伊甸大门]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"使一个随从获得【玄惑】。抽一张“坚守伊甸大门”，若你的牌堆中没有“坚守伊甸大门”，则将一张“烈焰之剑”置入你的手牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove summon3
tag @e remove drawtarget
tag @e remove targetmascot
tag @s remove 123