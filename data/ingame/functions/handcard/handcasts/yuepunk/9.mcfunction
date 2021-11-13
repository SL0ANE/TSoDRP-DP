execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 run summon minecraft:marker ~ ~1 ~ {Tags:["na","summon","a_halo","a_prestartround2","yuepunk","9"]}
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby

execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[锁喉]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"使敌方牌手的手牌增加1点能量消耗，直到你的下个回合。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1




tag @e remove targetcard
tag @s remove 123