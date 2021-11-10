tag @s add 123


execute if score @s healtaken matches 1.. if entity @s[tag=chain] run function ingame:minion/chain
execute if score @s healtaken matches 1.. if entity @s[tag=chain] at @e[tag=chaintarget] run playsound minecraft:block.respawn_anchor.charge block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s healtaken matches 1.. if entity @s[tag=chain] run scoreboard players operation @e[tag=chaintarget] healtaken += @s healtaken
execute if score @s healtaken matches 1.. run tag @e remove chaintarget
execute if score @s healtaken matches 1.. run tag @s remove chain

scoreboard players operation tempohealth hp = @s hp
scoreboard players operation tempohealth hp += @s healtaken
execute if score tempohealth hp > @s hplimit run scoreboard players operation tempohealth hp = @s hplimit
scoreboard players operation tempohealth hp -= @s hp
scoreboard players operation @s healtaken = tempohealth hp
scoreboard players reset tempohealth
scoreboard players operation @s hp += @s healtaken
execute if score @s healtaken matches ..0 run scoreboard players set @s healing 0
execute as @s[tag=minion] at @s run function ingame:minion/hpcheck
particle minecraft:composter ~ ~ ~ 0.3 0.3 0.3 0 50 force



execute if score @s healtaken matches 1.. at @s run summon minecraft:armor_stand ~ ~0.75 ~ {CustomName:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["word2","effect","healtaken","summon"],Invisible:1,Small:0,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Marker:1b,NoGravity:1b,CustomNameVisible:1b}
scoreboard players operation @e[tag=summon] minioncode = @s minioncode

execute if score @s healtaken matches 1..9 run setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"+\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"healtaken\",\"name\":\"@e[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute if score @s healtaken matches 10..99 run setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"+\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"healtaken\",\"name\":\"@e[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy
execute if score @s healtaken matches 100.. run setblock 1 0 0 minecraft:oak_sign{Text1:"[{\"text\":\"\",\"color\":\"\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"+\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"score\":{\"objective\":\"healtaken\",\"name\":\"@e[tag=123]\"},\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"} destroy




execute as @e[tag=summon,tag=healtaken] at @s run data modify entity @s CustomName set from block 1 0 0 Text1
scoreboard players set @e[tag=summon] waiting 15
tag @e remove summon
setblock 1 0 0 air
function ingame:minion/buffcheck
tag @s remove 123
