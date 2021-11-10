execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundending=22}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=targetmascot,limit=1] ownedby run tag @s add targets
execute if score @s cardcasting2 matches 18 as @e[tag=targets,limit=1,sort=random] run tag @s add targetminion
execute if score @s cardcasting2 matches 18 unless entity @e[tag=targetminion] run scoreboard players set @s cardcasting2 1
execute if score @s cardcasting2 matches 18 at @s as @e[tag=targetminion] run function ingame:effect/buff_summon
execute if score @s cardcasting2 matches 18 run scoreboard players set @e[tag=summon3] trueattack 2
execute if score @s cardcasting2 matches 18 run scoreboard players set @e[tag=summon3] hp 2
execute if score @s cardcasting2 matches 18 run scoreboard players set @e[tag=summon3] hplimit 2
execute if score @s cardcasting2 matches 18 run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting2 matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[传说之湖]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，随机使一个己方随从获得+2/+2。当传说之湖被摧毁时，将一张“圣剑”置入你的手牌。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetminion]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0

tag @e remove summon3
tag @e remove targetminion
tag @e remove targetmascot
tag @s remove 123
tag @e remove targets
