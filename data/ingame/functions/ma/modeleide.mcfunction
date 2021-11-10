

execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcards
execute if score @s casting matches 18 run scoreboard objectives add count dummy
execute if score @s casting matches 18 as @e[tag=targetcards] run function ingame:ma/modeleide2
execute if score @s casting matches 18 store result score 16count count if entity @e[tag=count]
execute if score @s casting matches 18 if score 16count count matches 16.. as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=pass] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"莫德雷德","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从阵亡后，若你的弃牌堆中有16张不同的牌，则消灭敌方牌手。"}},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"count","name":"16count"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"16","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard objectives remove count
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1


execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcards
execute if score @s casting matches 10 run scoreboard objectives add count dummy
execute if score @s casting matches 10 as @e[tag=targetcards] run function ingame:ma/modeleide2
execute if score @s casting matches 10 store result score 16count count if entity @e[tag=count]
execute if score @s casting matches 10 if score 16count count matches 16.. as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 10 unless entity @e[tag=pass] run scoreboard objectives remove count
execute if score @s casting matches 10 unless entity @e[tag=pass] run scoreboard players set @s casting 1
execute if score @s casting matches 10 if score 16count count matches 8.. as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add pass
execute if score @s casting matches 10 as @e[tag=pass] at @s run function ingame:effect/kill_summon


execute if score @s casting matches 10 at @e[tag=pass] run particle minecraft:smoke ~ ~1 ~ 0.4 0.4 0.4 0.05 300 force
execute if score @s casting matches 10 if entity @e[tag=pass] run playsound minecraft:entity.wither.death block @a[tag=ingame] ~ ~ ~ 3 1.6 1

execute if score @s casting matches 10 if entity @e[tag=pass] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"莫德雷德","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从阵亡后，若你的弃牌堆中有16张不同的牌，则消灭敌方牌手。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pass]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s casting matches 10 run scoreboard objectives remove count
execute if score @s casting matches 10 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove pass
tag @e remove count
tag @e remove counted
tag @e remove targetcards
tag @e remove target
tag @s remove 123
