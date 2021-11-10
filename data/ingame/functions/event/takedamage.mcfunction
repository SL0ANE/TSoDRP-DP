
#execute if score @s dmgtaken matches 1..3 at @s run playsound minecraft:entity.zombie.attack_wooden_door block @a[tag=ingame] ~ ~ ~ 2 1.4 1
#execute if score @s dmgtaken matches 1..3 at @s run playsound minecraft:entity.generic.explode block @a[tag=ingame] ~ ~ ~ 0.6 1.7 1
#execute if score @s dmgtaken matches 4..6 at @s run playsound minecraft:entity.zombie.attack_wooden_door block @a[tag=ingame] ~ ~ ~ 2 1 1
#execute if score @s dmgtaken matches 4..6 at @s run playsound minecraft:entity.generic.explode block @a[tag=ingame] ~ ~ ~ 0.7 1.5 1
#execute if score @s dmgtaken matches 7.. at @s run playsound minecraft:entity.zombie.attack_wooden_door block @a[tag=ingame] ~ ~ ~ 2 0.6 1
#execute if score @s dmgtaken matches 7.. at @s run playsound minecraft:entity.generic.explode block @a[tag=ingame] ~ ~ ~ 0.8 1.3 1


execute as @s[tag=dmgimmune,scores={dmgtaken=1..}] at @s run playsound minecraft:entity.illusioner.prepare_blindness block @a[tag=ingame] ~ ~ ~ 3 2 1
execute as @s[tag=dmgimmune,scores={dmgtaken=1..}] at @s run particle minecraft:smoke ~ ~0.5 ~ 0.4 0.4 0.4 0.1 300 force
execute as @s[tag=dmgimmune,scores={dmgtaken=1..}] run scoreboard players set @s dmgtaken 0

execute as @s[tag=block,scores={dmgtaken=1..}] at @s run playsound minecraft:item.shield.block block @a[tag=ingame] ~ ~ ~ 3 1 1
execute as @s[tag=block,scores={dmgtaken=1..}] run scoreboard players set @s dmgtaken 0

execute as @s[scores={dmgtaken=1..}] run scoreboard players operation @s hp -= @s dmgtaken


tag @s add 123


execute as @s[tag=minion] at @s run function ingame:minion/hpcheck
particle minecraft:item redstone_block ~ ~ ~ 0.3 0.3 0.3 0.2 30 force




execute if score @s dmgtaken matches 1.. at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","effect","summon","dmgtaken"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:1b}
scoreboard players operation @e[tag=summon] minioncode = @s minioncode
execute if score @s dmgtaken matches 1..9 run setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"-\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"dmgtaken\",\"name\":\"@e[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute if score @s dmgtaken matches 10..99 run setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"-\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"dmgtaken\",\"name\":\"@e[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute if score @s dmgtaken matches 100.. run setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"-\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"dmgtaken\",\"name\":\"@e[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
#execute if entity @s[tag=block] if score @s dmgtaken matches 0 at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","summon","display","blockdisplay"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:1b}
#execute if entity @s[tag=block] if score @s dmgtaken matches 0 run setblock 2 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute as @e[tag=summon,tag=dmgtaken] at @s run data modify entity @s CustomName set from block 1 0 0 Text1
#execute as @e[tag=summon,tag=blockdisplay] at @s run data modify entity @s CustomName set from block 2 0 0 Text1
scoreboard players set @e[tag=summon] waiting 15
tag @e remove summon
setblock 1 0 0 air
#setblock 2 0 0 air


execute if score @s dmgtaken matches 1.. if entity @s[tag=chain] run function ingame:minion/chain
execute if score @s dmgtaken matches 1.. if entity @s[tag=chain] at @e[tag=chaintarget] run playsound minecraft:entity.ghast.shoot block @a[tag=ingame] ~ ~ ~ 3 0.7 1
execute if score @s dmgtaken matches 1.. if entity @s[tag=chain] run scoreboard players operation @e[tag=chaintarget] dmgtaken += @s dmgtaken
tag @e remove chaintarget
tag @s remove chain


execute unless score @s dmgtaken matches 1.. run scoreboard players set @s dmgtaking 0

tag @s[tag=block] remove block
function ingame:minion/buffcheck

tag @s remove 123
