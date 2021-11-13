execute if score @s cardcasting2 matches 18 run tag @s add 123
execute if score @s cardcasting2 matches 18 as @e[tag=mascot,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={attacking=36,recover=-1}] run tag @s add target
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recover=-1,switching=4}] run tag @s add target
execute if score @s cardcasting2 matches 18 as @e[tag=minion,scores={recover=-1,switching=4}] run tag @s add target

execute if score @s cardcasting2 matches 18 as @e[tag=target] run function ingame:effect/debuff_summon
execute if score @s cardcasting2 matches 18 run scoreboard players set @e[tag=summon3] trueattack -1

execute if score @s cardcasting2 matches 14 run tag @s add 123
execute if score @s cardcasting2 matches 14 as @e[tag=mascot,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s cardcasting2 matches 14 as @e[tag=minion,scores={attacking=36,recover=-1}] run tag @s add target
execute if score @s cardcasting2 matches 14 as @e[tag=minion,scores={recover=-1,switching=4}] run tag @s add target
execute if score @s cardcasting2 matches 14 as @e[tag=minion,scores={recover=-1,switching=4}] run tag @s add target

execute if score @s cardcasting2 matches 14 as @e[tag=targetmascot] at @s positioned ~ ~1 ~ run function ingame:effect/healer_summon
execute if score @s cardcasting2 matches 14 as @e[tag=target] run scoreboard players add @e[tag=summon3] healtaken 1



execute if score @s cardcasting2 matches 18 at @e[tag=target] run particle minecraft:dust 1.2 0.3 0.3 2 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s cardcasting2 matches 18 run playsound minecraft:entity.evoker.prepare_summon block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s cardcasting2 matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"dark_red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"触发了","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"[君威]","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当一个随从攻击或换位时，使其获得-1/-1，然后为你恢复1点生命。"}},{"text":"！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s cardcasting2 matches 14 run scoreboard players set @s cardcasting2 0
tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123
tag @e remove target
