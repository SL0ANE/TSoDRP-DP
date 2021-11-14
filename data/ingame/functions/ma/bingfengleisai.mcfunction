execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 15
execute if score @s casting matches 18 if score @s attack matches ..0 run scoreboard players set @s casting 15
execute if score @s casting matches 18 if score @s attack matches 1.. if entity @e[tag=target] run scoreboard players set @s casting 12


execute if score @s casting matches 15 positioned ~ ~4 ~ run function ingame:effect/buff_summon
execute if score @s casting matches 15 run scoreboard players add @e[tag=summon3] trueattack 1
execute if score @s casting matches 15 run particle minecraft:dust 0.1 0.8 0.99 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 15 run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 15 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"冰封雷塞","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，若此随从的攻击力至少为1，则随机眩晕一个敌方随从并使此随从获得-1攻击力，若没有目标或此随从的攻击力小于等于0，则使此随从获得+1攻击力。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 15 run scoreboard players set @s casting 5

execute if score @s casting matches 12 run tag @s add 123
execute if score @s casting matches 12 unless entity @e[tag=target] as @e[tag=minion,scores={recover=-1}] unless score @s stun matches 1.. unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 12 unless entity @e[tag=target] as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 12 as @e[tag=target,sort=random,limit=1] run tag @s add hit
execute if score @s casting matches 12 as @e[tag=hit] run function ingame:effect/frost_summon
execute if score @s casting matches 12 run scoreboard players remove @s trueattack 1
execute if score @s casting matches 12 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"冰封雷塞","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束时，若此随从的攻击力至少为1，则随机眩晕一个敌方随从并使此随从获得-1攻击力，若没有目标或此随从的攻击力小于等于0，则使此随从获得+1攻击力。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=hit]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 12 run scoreboard players set @s casting 5


tag @e remove hit
tag @e remove summon3
tag @e remove target
tag @s remove 123