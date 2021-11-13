execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 run scoreboard players add @s stackcount 1
execute if score @s casting matches 18 run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 18 run particle minecraft:dust 0.1 0.8 0.99 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 if entity @e[tag=target] run scoreboard players operation @s round = @s stackcount
execute if score @s casting matches 18 if score @s round matches 1.. run playsound minecraft:item.crossbow.quick_charge_2 block @a[tag=ingame] ~ ~ ~ 3 0.4 1
execute if score @s casting matches 18 if score @s round matches 1.. run scoreboard players set @s casting 16
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"射手座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从换位后，对其对位随从造成1点伤害。然后重复零次（每换位过一次，便额外重复一次）。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"∞","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 run scoreboard players set @s casting 5

execute if score @s casting matches 12 run tag @s add 123
execute if score @s casting matches 12 unless score @s round matches 1.. run scoreboard players set @s casting 8
execute if score @s casting matches 12 run scoreboard players remove @s round 1
execute if score @s casting matches 12 unless entity @e[tag=target] as @e[tag=minion,tag=!dying,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 12 unless entity @e[tag=target] as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 12 run tag @e[tag=target,limit=1,sort=random] add pick
execute if score @s casting matches 12 at @s as @e[tag=pick] run function ingame:effect/arrow2_summon
execute if score @s casting matches 12 run scoreboard players add @e[tag=summon3] dmgtaken 1
execute if score @s casting matches 12 as @e[tag=pick] run tag @s add sheshouzuohit
execute if score @s casting matches 12 if score @s round matches 1.. run scoreboard players set @s casting 16






execute if score @s casting matches 8 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"射手座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从换位后，对其对位随从造成1点伤害。然后重复零次（每换位过一次，便额外重复一次）。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=sheshouzuohit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"∞","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 8 run tag @e remove sheshouzuohit
execute if score @s casting matches 5 run scoreboard players reset @s round


tag @e remove pick
tag @e remove summon3
tag @e remove target
tag @s remove 123
