tag @s add atkrun

tp @s @e[tag=location1,limit=1]
execute as @e[tag=data] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.85 ~ run tp @s ~ ~ ~
execute as @e[tag=buffstorage] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode at @e[tag=atkrun] positioned ~ ~0.5 ~ run tp @s ~ ~ ~
execute as @e[tag=display] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode run data modify entity @s Pos[0] set from entity @e[tag=atkrun,limit=1] Pos[0]
execute as @e[tag=display] if score @s minioncode = @e[tag=atkrun,limit=1] minioncode run data modify entity @s Pos[2] set from entity @e[tag=atkrun,limit=1] Pos[2]


kill @e[tag=location1]
tag @e remove at_dmgfrom
tag @e remove at_dmgto

execute if score @s attacktime matches 1.. run scoreboard players remove @s attacktime 1

tag @e remove atktarget
execute unless entity @e[scores={attacktime=1..}] run tag @e remove forceatktarget
execute unless entity @s[scores={attacktime=1..}] run tag @s remove forceattack
execute unless entity @s[scores={attacktime=1..}] run scoreboard players set @s attacking 0


tag @s remove atkrun
tag @s remove atker
execute if entity @s[scores={attacktime=1..}] run function ingame:event/attackstart



#tag @s add 123
#execute if entity @s[tag=aggressive] if score @s attacked matches ..1 if score @s attacktime matches 0 at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","summon","display","blockdisplay"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:1b}
#execute if entity @s[tag=aggressive] if score @s attacked matches ..1 if score @s attacktime matches 0 run setblock 2 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
#execute as @e[tag=summon,tag=blockdisplay] at @s run data modify entity @s CustomName set from block 2 0 0 Text1
#scoreboard players set @e[tag=summon] waiting 15
#setblock 2 0 0 air
#tag @e remove summon
#tag @s remove 123



#这个function结束攻击事件