execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 at @s as @e[tag=minion,scores={recover=1..},limit=1,sort=random] run function ingame:effect/soulgive_summon
execute if score @s cardcasting matches 38 as @e[tag=mascot] run scoreboard players add @s drawtime 1


execute if score @s cardcasting matches 38 run particle minecraft:dust 0.8 0.2 0.2 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[火种]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"随机唤醒一个随从。令每名牌手抽一张牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1





tag @e remove summon3
tag @s remove 123