execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting matches 38 as @e[tag=card,tag=trap,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetpoker
execute if score @s cardcasting matches 38 as @e[tag=card,tag=environment,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetpoker
execute if score @s cardcasting matches 38 as @e[tag=targetpoker,limit=1,sort=random] run tag @s add pick
execute if score @s cardcasting matches 38 as @e[tag=pick] run tag @s add forcedraw
execute if score @s cardcasting matches 38 if entity @e[tag=pick] run scoreboard players add @e[tag=targetmascot] drawtime 1

execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=pick] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 unless entity @e[tag=pick] run playsound minecraft:block.respawn_anchor.deplete block @a[tag=ingame] ~ ~ ~ 3 0.5 1
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[星界灾祸]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"随机抽一张陷阱牌或环境牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 unless entity @e[tag=pick] run scoreboard players set @s cardcasting 1


execute if score @s cardcasting matches 36 run scoreboard players set @s cardcasting 1



tag @e remove targetpoker
tag @e remove pick
tag @e remove targetmascot
tag @s remove 123