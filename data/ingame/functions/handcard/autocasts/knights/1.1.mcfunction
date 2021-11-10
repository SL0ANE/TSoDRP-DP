execute if score @s cardcasting matches 3 run tag @s add 123
execute if score @s cardcasting matches 3 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add carduser2
execute if score @s cardcasting matches 3 as @e[tag=carduser2] run tag @s add hittarget
execute if score @s cardcasting matches 3 as @e[tag=hittarget] at @s positioned ~ ~4 ~ run function ingame:effect/sword2_summon
execute if score @s cardcasting matches 3 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage
execute if score @s cardcasting matches 3 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser2] damage



execute if score @s cardcasting matches 3 as @e[tag=hittarget] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:item_snowball ~ ~0.4 ~ 0.4 0.4 0.4 0 100 force
execute if score @s cardcasting matches 3 if entity @e[tag=hittarget] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 3 unless entity @e[tag=hittarget] run playsound minecraft:block.respawn_anchor.deplete block @a[tag=ingame] ~ ~ ~ 3 2 1

execute if score @s cardcasting matches 3 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser2]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"抽到并触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[双刃剑]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"抽到时释放，对你造成2点伤害。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s cardcasting matches 5..34 at @s run tp @s ~ ~ ~ ~24 ~

execute if score @s cardcasting matches 3 run scoreboard players set @s cardcasting 1

tag @s remove 123
tag @e remove summon3
tag @e remove pass
tag @e remove hittarget
tag @e remove carduser2