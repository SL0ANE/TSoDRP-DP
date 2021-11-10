tag @s add running1
execute as @e[tag=t_environmentcaster,scores={environmentlife=1..}] if score @s ownedby = @e[tag=running1,limit=1] ownedby run tag @s add environment1
execute as @e[tag=t_card,scores={handorder=1..}] if score @s ownedby = @e[tag=running1,limit=1] ownedby run tag @s add counts

execute store result score @s handcardcount if entity @e[tag=counts]

tag @s remove running1
tag @e remove counts





tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"—————————————[牌手信息]—————————————","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"牌手：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"生命值：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"hp","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"hplimit","name":"@s"},"color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"   ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"能量：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"mana","name":"@s"},"color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"manalimit","name":"@s"},"color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"手牌数：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"handcardcount","name":"@s"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s attack matches 1.. run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"攻击力：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"attack","name":"@s"},"color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s roundcount matches 1.. run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"额外的回合：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"roundcount","name":"@s"},"color":"dark_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if entity @e[tag=environment1] run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"环境牌：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=environment1]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"(","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"environmentlife","name":"@e[tag=environment1]"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":")","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if entity @s[tag=onturn] run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合进行中：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"是","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=!onturn] run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合进行中：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"否","color":"red","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if entity @s[tag=dmgimmune] run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"状态：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"免疫伤害","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tellraw @a[tag=click] [{"text":"—————————————[牌手信息]—————————————","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @e remove environment1