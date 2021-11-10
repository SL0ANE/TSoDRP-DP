tag @s add 333
execute as @e[tag=mascot] if score @s ownedby = @e[tag=333,limit=1] ownedby run tag @s add 444
execute if entity @s[tag=environmentcaster] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=444]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"的环境牌被摧毁！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players reset @s environmentlife
function ingame:discard
tag @s remove environmentcaster
tag @s remove trapcaster
tag @s remove caster2
tag @s remove normalcaster2
tag @s remove specialcaster2

scoreboard players reset @s dying
scoreboard players reset @s cardcast2order
scoreboard players reset @s trapcasting
scoreboard players reset @s trapcastorder
tag @s remove 333
tag @e remove 444