tag @s add drawer
execute as @e[tag=mascot] if score @s ownedby = @e[tag=drawer,limit=1] ownedby run tag @s add 234
execute as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=234,limit=1] ownedby run tag @s add 222
tag @e[tag=card,tag=222,tag=forcedraw,limit=1,sort=random] add drawn
execute unless entity @e[tag=drawn] run tag @e[tag=card,scores={cardorder=1},tag=222] add drawn



tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"无法获得更多手牌！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @e[tag=drawn] run function ingame:extractdeck

scoreboard players set @s drawing 7

tag @e[tag=drawn] remove forcedraw
tag @e remove drawn
tag @s remove drawer
tag @e remove 234

