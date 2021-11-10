execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @a[tag=ingame,tag=playing] if score @s playernumber = @e[tag=123,limit=1] ownedby run tag @s add tell
execute if score @s cardcasting matches 38 as @a[tag=ingame,tag=!playing] unless score @s playernumber matches 1.. run tag @s add tell
execute if score @s cardcasting matches 38 as @a[tag=ingame,tag=playing] unless score @s playernumber = @e[tag=123,limit=1] ownedby run tag @s add hide
execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.8 0.2 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:block.respawn_anchor.charge block @a[tag=ingame] ~ ~ ~ 3 1.5 1

execute if score @s cardcasting matches 38 run tag @e[tag=beingused] add na_trap


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame,tag=tell] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[光环]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当敌方角色下一次攻击你时，对所有敌方角色造成3点伤害。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame,tag=hide] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[??????]","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"对手释放的陷阱牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s cardcasting matches 38 run scoreboard players set @s cardcasting 1




tag @a[tag=ingame] remove tell
tag @a[tag=ingame] remove hide
tag @s remove 123
