execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=cardtarget] at @s run function ingame:effect/kill_summon
execute if score @s cardcasting matches 35 run tag @s add 123
execute if score @s cardcasting matches 35 as @e[tag=card,scores={handorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute if score @s cardcasting matches 35 as @e[tag=targetcard,limit=1,sort=random] run tag @s add folding
execute if score @s cardcasting matches 35 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[通缉令]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"消灭一个随从。随机弃置你的一张手牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 35 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 35 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1

execute if score @s cardcasting matches 35 run scoreboard players set @s cardcasting 1


tag @e remove 123
tag @e remove summon
tag @e remove summon3
tag @e remove targetcard

