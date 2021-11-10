


execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 if entity @s[tag=cardtarget] run scoreboard players add @s stackcount 1
execute if score @s casting matches 18 unless entity @s[tag=cardtarget] run scoreboard players set @s casting 1
execute if score @s casting matches 18 run particle minecraft:dust 2 0.2 0.3 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 18 if score @s stackcount = @s stacklimit run function ingame:ma/liweitan2
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"利维坦","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"当你对此随从累计使用6张牌后，以深海恐惧·利维坦替换之。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"进度","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stackcount","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"/","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"stacklimit","name":"@s"},"color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 7 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove target
tag @s remove 123
tag @e remove pick
