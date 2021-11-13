execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=minion,scores={recover=-1}] run tag @s add target
execute if score @s cardcasting matches 38 run summon minecraft:marker ~ ~1 ~ {Tags:["na","summon","a_prestartround2","potato","6"]}
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] ownedby = @s ownedby
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon] truedamage = @s truedamage
execute if score @s cardcasting matches 38 at @e[tag=centre] run function ingame:effect/fire_summon
execute if score @s cardcasting matches 38 as @e[tag=target] run function ingame:effect/fire_tag
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=carduser] damage
execute if score @s cardcasting matches 38 run scoreboard players operation @e[tag=summon3] dmgtaken += @s truedamage

execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[红雾]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"对所有随从造成2点伤害。你的下个回合开始时，再次释放。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1




tag @e remove summon3
tag @e remove summon
tag @e remove target
tag @s remove 123