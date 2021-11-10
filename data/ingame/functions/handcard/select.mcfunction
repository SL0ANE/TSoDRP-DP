tag @s add selector
execute as @e[tag=mascot] if score @s ownedby = @a[tag=selector,limit=1] playernumber run tag @s add targetmascot
tag @e[tag=picking] remove picking

execute as @e[tag=card,scores={handorder=1..}] if score @s ownedby = @a[tag=selector,limit=1] playernumber run tag @s add category1

execute as @e[tag=category1] if score @s handorder = @a[tag=selector,limit=1] hoverhotbar run tag @s add picking
#execute if score @s hoverhotbar matches 1..7 unless entity @e[tag=picking] as @e[tag=category1] if score @s handorder = @e[tag=targetmascot,limit=1] handcardcount run tag @s add picking

execute if score @s hoverhotbar matches 0..7 as @e[tag=picking] at @s unless score system waiting matches 1.. run function ingame:handcard/float
execute if score @s hoverhotbar matches 0..7 as @e[tag=category1,tag=!picking] at @s unless score system waiting matches 1.. run function ingame:display/hand

execute if entity @e[tag=targetmascot,scores={step=1}] run tag @e remove picking
execute if score @s hoverhotbar matches 0..7 if entity @e[tag=targetmascot,scores={step=1}] run title @a[tag=selector] actionbar [{"text":"请选择一张牌","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s hoverhotbar matches 0 unless entity @e[tag=targetmascot,scores={step=1}] run title @a[tag=selector] actionbar [{"text":"","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s hoverhotbar matches 8 unless entity @e[tag=targetmascot,scores={step=1}] run title @a[tag=selector] actionbar [{"text":"","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute unless entity @e[tag=picking] run title @s actionbar {"text":""}
execute as @e[tag=picking] unless score @s hpcost matches 1.. run function ingame:handcard/select2manacost
execute as @e[tag=picking] if score @s hpcost matches 1.. run function ingame:handcard/select2hpcost

tag @e[tag=picking] remove picking

tag @e[tag=category1] remove category1
tag @e remove targetmascot
tag @s remove selector