execute if score @s casting matches 18 run tag @s add 123


execute if score @s casting matches 18 if entity @e[tag=beingused,tag=spell] as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123

execute if score @s casting matches 10 if entity @e[tag=beingused,tag=spell] as @e[tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 at @s run function ingame:effect/sword_summon
execute if score @s casting matches 10 as @e[tag=target] run function ingame:effect/sword_tag
execute if score @s casting matches 10 run scoreboard players set @e[tag=summon3] dmgtaken 2

execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"京合","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你使用一张法术牌时，对所有敌方随从造成2点伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 10 if entity @e[tag=target] run particle minecraft:dust 0 1 0 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:entity.zombie.attack_iron_door block @a[tag=ingame] ~ ~ ~ 2 1.4 1
execute if score @s casting matches 10 if entity @e[tag=target] run scoreboard players set @s casting 5

tag @e remove summon
tag @e remove target
tag @s remove 123