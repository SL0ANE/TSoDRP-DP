execute if score @s cardcasting matches 38 run tag @s add 123



execute if score @s cardcasting matches 38 as @e[tag=cardtarget] if score @s hp < @s hplimit run tag @s add pass
execute if score @s cardcasting matches 38 as @e[tag=cardtarget] if score @e[tag=carduser,limit=1] roundusedcard matches 1.. run tag @s add pass
execute if score @s cardcasting matches 38 as @e[tag=pass] at @s run function ingame:effect/kill_summon

execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[裁决]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"消灭一个受伤的随从。若你于本回合已使用过牌，则改为消灭任意一个随从。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove summon3
tag @e remove pass
tag @s remove 123