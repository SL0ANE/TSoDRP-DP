execute if score @s casting matches 18 as @e[tag=at_dmgto,tag=dying] run tag @s add target
execute if score @s casting matches 18 at @e[tag=target] run particle minecraft:dust 0.5 0 0 1.6 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 as @e[tag=target] at @s positioned ~ ~4 ~ run function ingame:effect/jail_summon
execute if score @s casting matches 18 run scoreboard players set @e[tag=summon3] reducedrecover -1
execute if score @s casting matches 18 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"兰马洛克","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击并击杀一个敌方随从时，使其下一次阵亡时增加1层休眠。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s attacking 2
execute if score @s casting matches 18 run scoreboard players set @s casting 5
tag @e remove summon3
tag @e remove target