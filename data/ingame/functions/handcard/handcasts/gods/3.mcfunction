execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run summon minecraft:marker ~ ~1 ~ {Tags:["na","summon","a_preendround2","gods","3"]}
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] minioncode = @e[tag=cardtarget] minioncode


execute if score @s cardcasting matches 38 at @s as @e[tag=cardtarget] run function ingame:effect/healer_summon
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] healtaken += @e[tag=cardtarget] hplimit

execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[天使的救济]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"为一个随从恢复等同于其生命上限的生命。本回合结束时，对其再次释放。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1





tag @e remove summon
tag @e remove summon3
tag @s remove 123