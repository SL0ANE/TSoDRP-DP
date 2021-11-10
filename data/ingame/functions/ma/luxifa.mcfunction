


execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=target] as @e[tag=minion,scores={dying=139}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 at @e[tag=target] run function ingame:effect/stacker_summon
execute if score @s casting matches 18 as @e[tag=target] run scoreboard players add @e[tag=summon3] stackcount 1

execute if score @s casting matches 15 run tag @s add 123
execute if score @s casting matches 15 unless entity @e[tag=target] as @e[tag=minion,scores={dying=139}] run tag @s add target
execute if score @s casting matches 15 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 15 if score @s stackcount = @s stacklimit at @s run function ingame:ma/luxifa2
execute if score @s casting matches 15 if score @s stackcount < @s stacklimit run particle minecraft:dust 1 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 15 if score @s stackcount < @s stacklimit run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 15 if score @s stackcount < @s stacklimit run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"路西法","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当累计四个敌方随从阵亡后，以魔王·路西法替换之。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 10 run scoreboard players set @s casting 5
tag @e remove summon3
tag @e remove target
tag @s remove 123

