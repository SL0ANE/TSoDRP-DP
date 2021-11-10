execute if score @s cardcasting matches 38 run tag @s add 123


execute if score @s cardcasting matches 38 as @e[tag=cardtarget,scores={recover=-1}] at @s positioned ~ ~4 ~ run function ingame:effect/sword2_summon
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage
execute if score @s cardcasting matches 38 run scoreboard players add @e[tag=carduser,scores={recover=-1}] drawtime 1

execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[开刃]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"对一个未受伤的角色造成3点伤害。抽一张牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @s remove summon3
tag @s remove 123