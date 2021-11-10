execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 at @s as @e[tag=cardtarget] run function ingame:effect/damage_summon
execute if score @s cardcasting matches 38 run scoreboard players add @e[tag=summon3] dmgtaken 1
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s drawtime 1
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s mana 1

execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.8 0.2 0.2 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[雪球]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"对一个角色造成1点伤害。获得1点能量。抽一张牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1





tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123