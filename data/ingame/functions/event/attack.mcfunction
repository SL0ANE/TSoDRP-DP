
tag @s add attacked



scoreboard players set @s dmgdeal 0
scoreboard players operation @s dmgdeal += @s attack


execute as @s[tag=!prudent] run scoreboard players operation @s at_dmgtaken += @e[tag=atktarget] attack
scoreboard players set @s[scores={dmgdeal=1..}] dmgdealing 12
scoreboard players set @s attacking 16




tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"攻击","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=atktarget]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


#tag @s add 123
#execute if entity @s[tag=prudent] at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","summon","display","prudentdisplay"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:1b}
#execute if entity @s[tag=prudent] run setblock 2 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
#execute as @e[tag=summon,tag=prudentdisplay] at @s run data modify entity @s CustomName set from block 2 0 0 Text1
#scoreboard players set @e[tag=summon] waiting 15
#tag @s remove 123
#tag @e remove summon
#setblock 2 0 0 air




