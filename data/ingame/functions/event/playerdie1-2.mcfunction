
particle minecraft:item redstone_block ~ ~1 ~ 0.4 0.4 0.4 0.3 400 force
particle minecraft:smoke ~ ~1 ~ 0.3 0.3 0.3 0.1 300 force

summon minecraft:lightning_bolt ~ ~ ~


execute if entity @s[tag=!surrender] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"死亡！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @s[tag=surrender] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"选择投降！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


function ingame:finish