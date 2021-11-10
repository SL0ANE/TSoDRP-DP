execute if score @s cardcasting matches 38 run tag @s add 123

execute if score @s cardcasting matches 38 run summon minecraft:marker ~ ~1 ~ {Tags:["na","summon","a_prestartround2","gods","2","a_halo"],Potion:CBC,Age:0,Duration:10000,Radius:0,RadiusOnUse:0,RadiusPerTick:0,Invisible:1b}
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] minioncode = @e[tag=cardtarget] minioncode
execute if score @s cardcasting matches 38 as @e[tag=cardtarget] at @s positioned ~ ~4 ~ run function ingame:effect/light_buff_summon

execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[圣光庇佑]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"选择一个随从，其不会受到伤害，直到你的下个回合。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove summon3
tag @e remove summon
tag @s remove 123