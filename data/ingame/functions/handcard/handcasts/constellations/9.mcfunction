execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot

execute if score @s cardcasting matches 38 as @e[tag=cardtarget] at @s positioned ~ ~4 ~ run function ingame:effect/arrow_summon
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage


execute if score @s cardcasting matches 38 as @e[tag=beingused] run function ingame:createcard
execute if score @s cardcasting matches 38 as @e[tag=summon2] run function ingame:insertdeck
execute if score @s cardcasting matches 38 run scoreboard players add @e[tag=summon2] truedamage 1




execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[制衡]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"对一个角色造成1点伤害。将一张可额外造成1点伤害的复制置入你的牌堆。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1

tag @e remove summon2
tag @e remove summon3
tag @s remove 123