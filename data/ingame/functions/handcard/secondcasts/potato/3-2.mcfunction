execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 as @e[tag=card,scores={dcpileorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute if score @s cardcasting2 matches 18 as @e[tag=targetcard] run function ingame:inserthand

execute if score @s cardcasting2 matches 18 if entity @e[tag=targetcard] run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=targetcard] run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=targetcard] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[济世折冰木]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，将你的弃牌堆顶的一张牌置入你的牌堆。当济世折冰木被摧毁时，将你的弃牌堆顶的一张牌置入手牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0

tag @e remove targetcard
tag @e remove targetmascot
tag @s remove 123
