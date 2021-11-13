
tag @s add running

tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"]","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"被销毁！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute at @s run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.07 300 force
execute at @s run playsound minecraft:block.fire.extinguish block @a[tag=ingame] ~ ~ ~ 1.6 1 1
execute as @e[tag=deck] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetdeck
execute as @e[tag=card,tag=!running,scores={cardorder=1..}] if score @s ownedby = @e[tag=running,limit=1] ownedby run tag @s add targetcards
execute as @e[tag=targetcards] if score @s cardorder > @e[tag=running,limit=1] cardorder run scoreboard players remove @s cardorder 1
#scoreboard players reset @s damage
#execute as @e[tag=targetdeck] run function ingame:setdeck



kill @s
tag @e remove targetdeck
tag @e remove targetcards
tag @s remove running
