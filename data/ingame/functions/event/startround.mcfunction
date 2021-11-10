tag @s add 123
execute if score @s ownedby matches 2 unless score @s roundcount matches 1.. run scoreboard players add system round 1

execute as @a[tag=ingame,scores={playernumber=1..2}] if score @s playernumber = @e[tag=123,limit=1] ownedby run tag @s add 234
execute as @s at @s run playsound minecraft:block.bell.use block @a[tag=ingame] ~ ~ ~ 3 1 1
execute if score @s ownedby matches 2 unless score system round matches 1 run scoreboard players add @s drawtime 1
execute if score @s ownedby matches 1 run scoreboard players add @s drawtime 1
scoreboard players set @e[scores={attacked=1..}] attacked 0

execute unless score @s manalimit matches 3.. run scoreboard players add @s manalimit 1

scoreboard players set @s mana 0
scoreboard players operation @s mana = @s manalimit
scoreboard players operation @s mana -= @s manaban
scoreboard players set @s[scores={mana=..-1}] mana 0
execute if score system round matches 1 if score @s ownedby matches 1 run scoreboard players add @s mana 1
tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"light_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"的回合开始！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
#execute if entity @s[scores={manaban=1..}] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"本回合的起始能量-","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"manaban","name":"@s"},"color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
title @a[tag=ingame,tag=234] times 10 20 10
title @a[tag=ingame,tag=234] title [{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"回合开始","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @s remove manaban
scoreboard players remove @s[scores={roundcount=1..}] roundcount 1
scoreboard players set @s manaban 0
tag @s remove 123
tag @a[tag=ingame] remove 234