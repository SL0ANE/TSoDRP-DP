execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 18 run scoreboard players add @s stackcount 1
execute if score @s casting matches 18 if score @s stackcount < @s stacklimit at @s run particle minecraft:dust 0.8 0.8 0.2 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 if score @s stackcount < @s stacklimit at @s run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 18 if score @s stackcount < @s stacklimit at @s run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"塔梅拉","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你累计抽三张牌后，对敌方牌手造成3点伤害并令其抽一张牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 if score @s stackcount < @s stacklimit run scoreboard players set @s casting 5
execute if score @s casting matches 18 at @s run particle minecraft:dust 0.6 0.8 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 at @s run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 18 at @s as @e[tag=targetmascot] run function ingame:effect/arrow2_summon
execute if score @s casting matches 18 run scoreboard players add @e[tag=summon3] dmgtaken 3

execute if score @s casting matches 15 run tag @s add 123
execute if score @s casting matches 15 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 15 run scoreboard players add @e[tag=targetmascot] drawtime 1
execute if score @s casting matches 15 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"塔梅拉","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你累计抽三张牌后，对敌方牌手造成3点伤害并令其抽一张牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=targetmascot]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 15 run scoreboard players set @s stackcount 0
execute if score @s casting matches 15 run scoreboard players set @s casting 5


tag @e remove summon3
tag @e remove targetmascot
tag @s remove 123
