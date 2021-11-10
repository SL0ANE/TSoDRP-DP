
execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,tag=!dying,tag=!123,scores={recover=-1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 run tag @e[tag=target,limit=1,sort=random] add pick
execute if score @s casting matches 18 at @e[tag=pick] run function ingame:effect/soultake_summon
execute if score @s casting matches 18 as @e[tag=pick] run function ingame:effect/soultake_tag
execute if score @s casting matches 18 at @e[tag=pick] run particle minecraft:dust 1 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 if entity @e[tag=pick] run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 18 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"宏武","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从阵亡后，随机消灭一个己方随从，然后唤醒此随从，若没有存活的己方随从，则随机唤醒一个其他己方随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 if entity @e[tag=pick] run scoreboard players set @s casting 5



execute if score @s casting matches 18 unless entity @e[tag=pick] as @e[tag=minion,tag=!dying,tag=!123,scores={recover=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 run tag @e[tag=target,limit=1,sort=random] add pick
execute if score @s casting matches 18 unless entity @e[tag=pick] run scoreboard players set @s casting 1
execute if score @s casting matches 18 at @s as @e[tag=pick] run function ingame:effect/soulgive_summon
execute if score @s casting matches 18 at @e[tag=pick] run particle minecraft:dust 1 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 if entity @e[tag=pick] run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 18 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"宏武","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从阵亡后，随机消灭一个己方随从，然后唤醒此随从，若没有存活的己方随从，则随机唤醒一个其他己方随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 run scoreboard players set @s casting 5




tag @s remove 123
tag @e remove summon3
tag @e remove target
tag @e remove pick