execute if score @s cardcasting matches 38 run tag @s add 123


execute if score @s cardcasting matches 38 as @e[tag=environmentcaster] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add 234
execute if score @s cardcasting matches 38 as @e[tag=234] run function ingame:destroy
execute if score @s cardcasting matches 38 unless entity @e[tag=234] run scoreboard players set @s cardcasting 36

execute if score @s cardcasting matches 36 run tag @s add 123
execute if score @s cardcasting matches 36 run particle minecraft:dust 0.3 0.1 0.4 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 36 run playsound minecraft:block.respawn_anchor.set_spawn block @a[tag=ingame] ~ ~ ~ 3 2 1


execute if score @s cardcasting matches 36 run tag @e[tag=beingused] add environmentcaster
execute if score @s cardcasting matches 36 run tag @e[tag=beingused] add na
execute if score @s cardcasting matches 36 run scoreboard players set @e[tag=beingused] environmentlife 3



execute if score @s cardcasting matches 36 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[君威]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当一个随从攻击或换位时，使其获得-1/-1，然后为你恢复2点生命。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 36 run scoreboard players set @s cardcasting 1




tag @s remove 123

tag @e remove 234