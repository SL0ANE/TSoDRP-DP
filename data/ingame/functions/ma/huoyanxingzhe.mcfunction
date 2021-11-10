execute if score @s casting matches 16 run tag @s add 123
execute if score @s casting matches 16 as @e[tag=character,tag=!123,scores={recover=-1}] run tag @s add target
execute if score @s casting matches 16 at @e[tag=centre] run function ingame:effect/fire_summon
execute if score @s casting matches 16 as @e[tag=target] run function ingame:effect/fire_tag
execute if score @s casting matches 16 run scoreboard players set @e[tag=summon3] dmgtaken 1
execute if score @s casting matches 16 if entity @e[tag=pass] run particle minecraft:dust 1 0 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 16 if entity @e[tag=pass] run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 16 if entity @e[tag=pass] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"火焰行者","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束、此随从唤醒或阵亡后，对所有其他角色造成1点伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 16 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove target
tag @s remove 123
