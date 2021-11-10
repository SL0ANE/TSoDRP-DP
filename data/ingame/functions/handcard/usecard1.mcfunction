tag @s add click
execute as @e[tag=mascot] if score @s ownedby = @a[tag=click,limit=1] playernumber run tag @s add targetmascot
playsound minecraft:ui.button.click block @s ~ ~ ~ 3 1.2 1
title @s clear
title @s times 0 1 10
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if score eventplaying pause matches 1.. run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"事件正在进行中","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=targetmascot,tag=!onturn,scores={step=1..}] run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法进行该操作","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if score eventplaying pause matches 0 run function ingame:handcard/selectuse
execute as @e[tag=selectedcard] unless score @s hpcost matches 1.. run tag @s add spendmana
execute as @e[tag=selectedcard] if score @s hpcost matches 1.. run tag @s add spendhp


#环境牌使用许可
scoreboard objectives add trapcount dummy

execute as @e[tag=trapcaster] if score @s ownedby = @e[tag=targetmascot,limit=1] ownedby run tag @s add countedtrap
execute store result score temp trapcount if entity @e[tag=countedtrap]
execute as @e[tag=countedtrap] if score @s cardid = @e[tag=selectedcard,limit=1] cardid run tag @e[tag=selectedcard,tag=trap] add samecardexisted
execute as @e[tag=countedtrap] if score @s cardid = @e[tag=selectedcard,limit=1] cardid run tag @e[tag=selectedcard,tag=trap] add deny
execute if score temp trapcount matches 4.. run tag @e[tag=selectedcard] add toomuchtrap
execute if score temp trapcount matches 4.. run tag @e[tag=selectedcard] add deny
#陷阱牌使用许可
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=trap,tag=selectedcard,tag=samecardexisted] if score eventplaying pause matches 0 run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"已存在相同陷阱牌","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=trap,tag=selectedcard,tag=toomuchtrap] if score eventplaying pause matches 0 if score temp trapcount matches 4.. run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"已存在过多陷阱牌","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=spendmana,tag=selectedcard] if score eventplaying pause matches 0 unless score @e[tag=targetmascot,limit=1] mana >= @e[tag=selectedcard,limit=1] cost run title @s title [{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"能量不足","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"!","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=spendmana,tag=selectedcard] if score eventplaying pause matches 0 if score @e[tag=targetmascot,limit=1] mana >= @e[tag=selectedcard,limit=1,tag=need_no_target,tag=!deny] cost run function ingame:handcard/usecard3
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=spendmana,tag=selectedcard] if score eventplaying pause matches 0 if score @e[tag=targetmascot,limit=1] mana >= @e[tag=selectedcard,limit=1,tag=need_target] cost run function ingame:handcard/usecard2

execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=spendhp,tag=need_no_target,tag=!deny] if score eventplaying pause matches 0 run function ingame:handcard/usecard3
execute if entity @e[tag=targetmascot,tag=onturn,scores={step=0}] if entity @e[tag=spendhp,tag=need_target] if score eventplaying pause matches 0 run function ingame:handcard/usecard2



scoreboard objectives remove trapcount

tag @e remove samecardexisted
tag @e remove targetmascot
tag @s remove selector
tag @e[tag=selectedcard] remove selectedcard
tag @s remove click
tag @e remove deny
tag @e remove spendhp
tag @e remove spendmana
tag @e remove countedtrap
tag @e remove toomuchtrap