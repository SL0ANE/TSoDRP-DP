


execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] run tag @s add 123
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if score @s stackcount < @s stacklimit unless entity @e[tag=target] as @e[tag=minion,scores={recovering=8}] run tag @s add target
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if score @s stackcount >= @s stacklimit unless entity @e[tag=target] as @e[tag=minion,scores={recovering=8},tag=!123] run tag @s add target

execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if entity @e[tag=target] unless score @s stackcount >= @s stacklimit run scoreboard players remove @s basic_recover 1
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if entity @e[tag=target] unless score @s stackcount >= @s stacklimit run scoreboard players add @s stackcount 1
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if entity @e[tag=target] if score @s recover matches 1.. run scoreboard players set @s rcvremoving 5


execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] as @e[tag=target] at @s run function ingame:minion/hpcheck
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] as @e[tag=target] at @s run particle minecraft:dust 0 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if entity @e[tag=target] run playsound minecraft:entity.evoker.cast_spell block @a[tag=ingame] ~ ~ ~ 3 1.5 1
execute if score @s casting matches 17 if entity @e[tag=minion,scores={recovering=8}] if entity @e[tag=target] if score @s stackcount <= @s stacklimit run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"雷米尔","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"此随从的基础休眠层数为6。每当一个随从唤醒时（不论此随从是否存活），使此随从永久减少1层休眠（至多6层）。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



execute if score @s casting matches 17 run scoreboard players set @s casting 5

tag @e remove target
tag @s remove 123
