tag @s add running1
execute as @e[tag=t_card,scores={cardorder=1..}] if score @s ownedby = @e[tag=running1,limit=1] ownedby run tag @s add counts
execute as @e[tag=t_card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=running1,limit=1] ownedby run tag @s add counts2



execute as @e[tag=t_mascot] if score @s ownedby = @e[tag=running1,limit=1] ownedby run tag @s add targetmascot
execute store result score @e[tag=targetmascot,limit=1] deckcount if entity @e[tag=counts]
execute store result score @e[tag=targetmascot,limit=1] dcpilecount if entity @e[tag=counts2]




tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"—————————————[牌堆信息]—————————————","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s ownedby matches -1 run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"牌堆所有者：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=t_mascot,scores={ownedby=1}]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s ownedby matches -2 run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"牌堆所有者：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=t_mascot,scores={ownedby=2}]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"轮数：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"round","name":"t_system"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s ownedby matches -1 run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"剩余牌数：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"deckcount","name":"@e[tag=t_mascot,scores={ownedby=1}]"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s ownedby matches -2 run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"剩余牌数：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"deckcount","name":"@e[tag=t_mascot,scores={ownedby=2}]"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


#execute if score @s ownedby matches -1 run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"弃牌堆牌数：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"dcpilecount","name":"@e[tag=mascot,scores={ownedby=1}]"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"   "},{"text":"点击此处查看","color":"white","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/function ingame:dcpilecheck"}}]
#execute if score @s ownedby matches -2 run tellraw @a[tag=click] [{"text":"       ","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"弃牌堆牌数：","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"dcpilecount","name":"@e[tag=mascot,scores={ownedby=2}]"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"   "},{"text":"点击此处查看","color":"white","bold":true,"italic":false,"underlined":true,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/function ingame:dcpilecheck"}}]









tellraw @a[tag=click] [{"text":"—————————————[牌堆信息]—————————————","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a[tag=click] [{"text":"","color":"green","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]




tag @e remove targetmascot
tag @s remove running1
tag @e remove counts
tag @e remove counts2

