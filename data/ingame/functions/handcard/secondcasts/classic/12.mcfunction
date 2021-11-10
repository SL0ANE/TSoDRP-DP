execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={roundending=22}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 unless entity @e[tag=targetmascot] run scoreboard players set @s cardcasting2 1
execute if score @s cardcasting2 matches 18 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s healtaken 2
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players add @s healtaken 2
execute if score @s cardcasting2 matches 18 run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting2 matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[医疗后援]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，为所有己方角色恢复2点生命。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting2 matches 18 run scoreboard players set @s cardcasting2 0
tag @e remove targetmascot
tag @s remove 123
