execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 run tag @e[tag=cardtarget] add addblock
execute if score @s cardcasting matches 38 run scoreboard players set @e[tag=cardtarget] blocktime 5

execute if score @s cardcasting matches 38 as @e[tag=minion,scores={recover=-1}] if score @s minionboard = @e[tag=cardtarget,limit=1] minionboard unless score @s ownedby = @e[tag=cardtarget,limit=1] ownedby run tag @s add target

execute if score @s cardcasting matches 38 run tag @e[tag=target] add forceatktarget
execute if score @s cardcasting matches 38 run scoreboard players operation @s targetcode = @e[tag=target] minioncode
execute if score @s cardcasting matches 38 if entity @e[tag=target] run scoreboard players add @e[tag=cardtarget] attacktime 1


execute if score @s cardcasting matches 35 run tag @s add 123
execute if score @s cardcasting matches 35 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting matches 35 as @e[tag=minion,tag=dying] if score @s minioncode = @e[tag=123,limit=1] targetcode run tag @s add pass
execute if score @s cardcasting matches 35 unless entity @e[tag=pass] run scoreboard players set @s cardcasting 1
execute if score @s cardcasting matches 35 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"招架反击\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["knights","8.1","derive","card","summon","need_target","spell","s_minion","s_live"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Small:1b,Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:21081}}]}
execute if score @s cardcasting matches 35 at @e[tag=cardtarget] run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 35 run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting matches 35 run scoreboard players set @e[tag=summon] truecost 1
execute if score @s cardcasting matches 35 as @e[tag=summon] run function ingame:inserthand
execute if score @s cardcasting matches 35 run scoreboard players set @s cardcasting 1



execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[盾击]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"使一个随从获得【格挡】并令其攻击对位随从，若击杀目标，则将一张“招架反击”置入你的手牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 unless entity @e[tag=target] run scoreboard players set @s cardcasting 1



tag @e remove pass
tag @e remove targetmascot
tag @e remove summon
tag @e remove target
tag @s remove 123