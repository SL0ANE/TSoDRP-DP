execute if score @s cardcasting matches 38 run tag @s add 123
execute if score @s cardcasting matches 38 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting matches 38 as @e[tag=card,scores={dcpileorder=3}] if score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:insertdeck
execute if score @s cardcasting matches 38 as @e[tag=card,scores={dcpileorder=2}] if score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:insertdeck
execute if score @s cardcasting matches 38 as @e[tag=card,scores={dcpileorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:insertdeck
execute if score @s cardcasting matches 38 run scoreboard players add @e[tag=targetmascot] drawtime 1


execute if score @s cardcasting matches 36 run tag @s add 123
execute if score @s cardcasting matches 36 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting matches 36 as @e[tag=card,scores={dcpileorder=3}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:insertdeck
execute if score @s cardcasting matches 36 as @e[tag=card,scores={dcpileorder=2}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:insertdeck
execute if score @s cardcasting matches 36 as @e[tag=card,scores={dcpileorder=1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:insertdeck
execute if score @s cardcasting matches 36 run scoreboard players add @e[tag=targetmascot] drawtime 1


execute if score @s cardcasting matches 38 run particle minecraft:dust 0.3 0.6 1 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting matches 38 run playsound minecraft:entity.illusioner.mirror_move block @a[tag=ingame] ~ ~ ~ 3 1.5 1


execute if score @s cardcasting matches 38 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=carduser]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"使用了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[空投发放]","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"将每名牌手的弃牌堆顶的三张牌置入其牌堆。令每名牌手抽一张牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s cardcasting matches 36 run scoreboard players set @s cardcasting 1
tag @e remove targetmascot
tag @s remove 123