execute if score @s cardcasting matches 38 run tag @s add 123


execute if score @s cardcasting matches 38 as @e[tag=!cardtarget,tag=minion] if score @s ownedby = @e[tag=cardtarget,limit=1] ownedby run tag @s add targets1
execute if score @s cardcasting matches 38 as @e[tag=targets1,limit=1,sort=random] run tag @s add target1
execute if score @s cardcasting matches 38 if entity @e[tag=target1] as @e[tag=!cardtarget,tag=minion,tag=!target1] if score @s ownedby = @e[tag=cardtarget,limit=1] ownedby run tag @s add targets2
execute if score @s cardcasting matches 38 as @e[tag=targets2,limit=1,sort=random] run tag @s add target2
execute if score @s cardcasting matches 38 if entity @e[tag=target2] run scoreboard players set @e[tag=target1] switching 10
execute if score @s cardcasting matches 38 if entity @e[tag=target2] run tag @e[tag=target1] add switcher
execute if score @s cardcasting matches 38 if entity @e[tag=target2] run tag @e[tag=target2] add switched



execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[换岗]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"选择一个随从，令其阵营中的其他随从交换位置（不论其是否入场或存活）。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1
tag @e remove targets1
tag @e remove targets2
tag @e remove target1
tag @e remove target2
tag @s remove 123