execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=beingused,tag=spell] run tag @s add pass
execute if score @s casting matches 18 if entity @e[tag=pass] run scoreboard players add @s stackcount 1
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1
execute if score @s casting matches 18 run particle minecraft:dust_color_transition 1 1 0 2 0 1 0 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run playsound minecraft:entity.player.levelup block @a[tag=ingame] ~ ~ ~ 3 0.7 1

execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"天秤座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你使用一张法术牌后，使此随从永久获得1点卡牌伤害。每回合限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"∞","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 run tag @s add casted2
tag @e remove pass
tag @e remove 123
