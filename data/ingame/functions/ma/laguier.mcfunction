execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=targets] as @e[tag=minion,scores={recover=1..2}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 18 unless entity @e[tag=targets] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 unless entity @e[tag=targets] as @e[tag=minion,scores={recover=1..2}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting matches 10 unless entity @e[tag=targets] run scoreboard players set @s casting 1
execute if score @s casting matches 10 as @e[tag=targets,limit=1,sort=random] run tag @s add pick
execute if score @s casting matches 10 as @e[tag=pick] run scoreboard players set @s recover 0
execute if score @s casting matches 10 if entity @e[tag=pick] run particle minecraft:dust 1 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 if entity @e[tag=pick] run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 10 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"拉贵尔","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当拉贵尔阵亡后，随机唤醒一个休眠层数小于等于2的己方随从。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=pick]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @e remove targets
tag @e remove pick
tag @s remove 123
