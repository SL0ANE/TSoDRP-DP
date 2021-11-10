execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundending=22}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 if entity @e[tag=targetmascot] as @e[tag=minion,scores={recover=1..}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetminion
execute if score @s cardcasting2 matches 18 run tag @e[tag=targetminion,sort=random,limit=1] add pick
execute if score @s cardcasting2 matches 18 as @e[tag=pick] at @s positioned ~ ~4 ~ run function ingame:effect/jail_summon
execute if score @s cardcasting2 matches 18 run scoreboard players set @e[tag=summon3] recover 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=pick] run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 if entity @e[tag=pick] run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting2 matches 18 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[永恒封印]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，随机使一个休眠的敌方随从增加1层休眠。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0

tag @e remove summon3
tag @e remove pick
tag @e remove targetminion
tag @e remove targetmascot
tag @s remove 123
