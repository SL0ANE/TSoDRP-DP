execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 run execute as @e[tag=minion,scores={recover=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add hittarget
execute if score @s cardcasting matches 38 as @e[tag=hittarget,scores={recover=1..}] at @s run scoreboard players set @s rcvremoving 5
execute if score @s cardcasting matches 38 as @e[tag=hittarget] at @s run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=hittarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 unless entity @e[tag=hittarget] run playsound minecraft:block.respawn_anchor.deplete block @a[tag=ingame] ~ ~ ~ 3 2 1

execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[晨钟]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"使所有己方随从减少1层休眠。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1






tag @e remove hittarget
tag @s remove 123