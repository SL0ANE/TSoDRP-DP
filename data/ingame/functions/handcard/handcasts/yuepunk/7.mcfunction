execute if score @s cardcasting matches 38 run tag @s add 123

execute if score @s cardcasting matches 38 at @e[tag=cardtarget] run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=cardtarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[鞭笞]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"使一个随从获得+1攻击力，然后对其造成1点伤害。然后重复两次。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=cardtarget]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s cardcasting matches 35 as @e[tag=cardtarget] run scoreboard players add @s trueattack 1
execute if score @s cardcasting matches 35 as @e[tag=cardtarget] at @s run function ingame:effect/scratch_summon
execute if score @s cardcasting matches 35 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage
execute if score @s cardcasting matches 35 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage

execute if score @s cardcasting matches 32 as @e[tag=cardtarget] run scoreboard players add @s trueattack 1
execute if score @s cardcasting matches 32 as @e[tag=cardtarget] at @s run function ingame:effect/scratch_summon
execute if score @s cardcasting matches 32 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage
execute if score @s cardcasting matches 32 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage


execute if score @s cardcasting matches 29 as @e[tag=cardtarget] run scoreboard players add @s trueattack 1
execute if score @s cardcasting matches 29 as @e[tag=cardtarget] at @s run function ingame:effect/scratch_summon
execute if score @s cardcasting matches 29 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage
execute if score @s cardcasting matches 29 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage


execute if score @s cardcasting matches 29 run scoreboard players set @s cardcasting 1





tag @e remove summon3
tag @s remove 123