tag @s add 123



execute as @e[tag=environmentcaster,scores={environmentlife=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players remove @s environmentlife 1
execute as @e[tag=environmentcaster,scores={environmentlife=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=123]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"的环境牌将于","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"environmentlife","name":"@s"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合后被摧毁！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @e[tag=environmentcaster,scores={environmentlife=0}] if score @s ownedby = @e[tag=123,limit=1] ownedby run scoreboard players set @s dying 147


tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"的回合结束！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players set @s roundending 8

tag @s remove 123