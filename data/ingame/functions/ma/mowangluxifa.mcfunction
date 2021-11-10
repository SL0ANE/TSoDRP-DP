
execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=target] as @e[tag=minion,scores={dying=139}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 if entity @e[tag=target] as @e[tag=mascot] if score @s ownedby = @e[tag=target,limit=1] ownedby run tag @s add hit
execute if score @s casting matches 18 unless entity @e[tag=hit] run scoreboard players set @s casting 1
execute if score @s casting matches 18 at @s as @e[tag=hit] run function ingame:effect/cannon_summon
execute if score @s casting matches 18 as @e[tag=summon3] run scoreboard players set @s dmgtaken 7
execute if score @s casting matches 18 if entity @e[tag=target] run particle minecraft:dust 2 0 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"魔王·路西法","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当一个敌方随从阵亡后，对敌方牌手造成7点伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove target
tag @s remove 123
tag @e remove hit

