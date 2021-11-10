tag @s add 890
playsound minecraft:ui.button.click block @s ~ ~ ~ 3 1.2 1
title @s clear
title @s times 0 1 10
execute as @e[tag=mascot] if score @s ownedby = @e[tag=890,limit=1] playernumber run tag @s add targetmascot
execute if entity @e[tag=targetmascot,tag=!onturn,scores={step=0}] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法进行该操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if score eventplaying pause matches 1.. run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"事件正在进行中","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score eventplaying pause matches 0 if entity @e[tag=targetmascot,tag=onturn] run function ingame:minion/switch
tag @s remove 890
tag @e remove targetmascot