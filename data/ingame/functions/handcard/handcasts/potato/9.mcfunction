execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting matches 38 run scoreboard objectives add runcount dummy
execute if score @s cardcasting matches 38 run scoreboard players operation system runcount = roundminiondied number








execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 if score system runcount matches 1.. run function ingame:handcard/handcasts/potato/9-2
execute if score @s cardcasting matches 38 run scoreboard players set @e[tag=summon] truecost 1
execute if score @s cardcasting matches 38 as @e[tag=summon] run function ingame:insertdeck

execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[乘胜追击]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"本回合内，每有一个随从阵亡，便将一张“简易火药”置入敌方牌手的牌堆。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 run scoreboard objectives remove runcount
execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove targetmascot
tag @s remove 123