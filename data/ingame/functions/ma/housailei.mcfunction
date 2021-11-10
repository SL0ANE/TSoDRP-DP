execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 10 run summon minecraft:armor_stand ~ ~ ~ {CustomName:"[{\"text\":\"简易火药\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Tags:["classic","18","card","summon","need_no_target","spell","castwhendrawn","derive"],Invisible:1,DisabledSlots:2039583,Rotation:[0f],Pose:{Head:[0.01f,0f,0f],Body:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]},Small:1b,Marker:1b,CustomNameVisible:0b,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",Count:1b,tag:{CustomModelData:1180}}]}
execute if score @s casting matches 10 run scoreboard players set @e[tag=summon] truecost 1
execute if score @s casting matches 10 as @e[tag=summon] run function ingame:insertdeck


execute if score @s casting matches 10 run particle minecraft:dust 0.2 0.7 0.6 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run playsound minecraft:ui.toast.in block @a[tag=ingame] ~ ~ ~ 3 1.4 1
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"猴赛雷","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从唤醒或阵亡后，将一张“简易火药”置入敌方牌手的牌堆。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 10 run scoreboard players set @s casting 5
tag @e remove summon
tag @e remove targetmascot
tag @s remove 123
