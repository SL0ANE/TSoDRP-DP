execute if score @s cardcasting matches 38 run tag @s add 123

execute if score @s cardcasting matches 38 as @e[tag=minion,scores={recover=-1}] run tag @s add target
execute if score @s cardcasting matches 38 at @e[tag=centre] run function ingame:effect/disaster_summon
execute if score @s cardcasting matches 38 as @e[tag=target] run function ingame:effect/disaster_tag

execute if score @s cardcasting matches 35 as @e[tag=minion,scores={recover=-1},tag=dying] run scoreboard players add @e[tag=carduser] drawtime 1

execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[哈米吉多顿]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"消灭所有随从，每消灭一个随从，便抽一张牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 35 run scoreboard players set @s cardcasting 1

tag @e remove summon3
tag @e remove target
tag @s remove 123