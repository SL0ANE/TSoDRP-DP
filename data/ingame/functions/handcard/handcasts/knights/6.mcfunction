execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 at @e[tag=carduser] as @e[tag=cardtarget,scores={recover=-1}] run function ingame:effect/healer_summon
execute if score @s cardcasting matches 38 run scoreboard players set @e[tag=summon3] healtaken 4
execute if score @s cardcasting matches 38 as @e[scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @e[tag=summon3] healtaken 1


execute if score @s cardcasting matches 38 at @e[tag=cardtarget,scores={recover=-1}] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[圣杯]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"为一个角色恢复4点生命，你的弃牌堆中每有一张牌，便额外恢复1点生命。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1


tag @e remove summon3
tag @s remove 123