execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting matches 38 as @e[tag=card,scores={cardorder=1..3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcards
execute if score @s cardcasting matches 38 as @e[tag=card,scores={cardorder=1..3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add discovered
execute if score @s cardcasting matches 38 if entity @e[tag=discovered] run function ingame:discover
execute if score @s cardcasting matches 38 if entity @e[tag=discovered] run summon minecraft:marker ~ ~1 ~ {Tags:["caster2","summon","yuepunk","10"]}


execute if score @s cardcasting matches 38 if entity @e[tag=discovered] run scoreboard players set @e[tag=targetmascot] step 1
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby


execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 if entity @e[tag=discovered] run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s cardcasting matches 38 unless entity @e[tag=discovered] run playsound minecraft:block.respawn_anchor.deplete block @a[tag=ingame] ~ ~ ~ 3 2 1

execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[英歌集结]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"查看你的牌堆顶的三张牌，抽其中一张牌并将其余两张置于你的牌堆底。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 36 run scoreboard players set @s cardcasting 1





tag @e remove summon
tag @e remove targetmascot
tag @e remove targetcards
tag @s remove 123