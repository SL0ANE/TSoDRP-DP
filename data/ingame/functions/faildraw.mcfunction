tag @s add drawer
execute as @e[tag=mascot] if score @s ownedby = @e[tag=drawer,limit=1] ownedby run tag @s add 234
tellraw @a [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"的牌堆已空","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"，即将阵亡！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
scoreboard players set @s hp 0
scoreboard players set @s drawaddition 0
scoreboard players set @s drawtime 0
execute as @e[tag=deck] run particle minecraft:large_smoke ~ ~ ~ 0.4 0.4 0.4 0.1 100 force
execute as @e[tag=deck] run playsound minecraft:item.trident.thunder block @a[tag=ingame] ~ ~ ~ 3 1.2 1
scoreboard players set @s drawing 7
tag @s remove drawer
tag @e remove 234
