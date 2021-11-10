execute if score @s casting2 matches 18 run tag @s add 123
execute if score @s casting2 matches 18 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s handcardcount < @s handcardlimit run tag @s add pass
execute if score @s casting2 matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting2 1

execute if score @s casting2 matches 10 run tag @s add 123
execute if score @s casting2 matches 10 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby if score @s handcardcount < @s handcardlimit run tag @s add pass
execute if score @s casting2 matches 10 unless entity @e[tag=pass] run scoreboard players set @s casting2 1


execute if score @s casting2 matches 10 if entity @e[tag=pass] as @e[tag=card,scores={dcpileorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targets
execute if score @s casting2 matches 10 as @e[tag=targets,sort=random,limit=1] run tag @s add pick
execute if score @s casting2 matches 10 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting2 matches 10 as @e[tag=pick] run function ingame:inserthand
execute if score @s casting2 matches 10 if entity @e[tag=pick] at @s run particle minecraft:dust 1 1 1 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting2 matches 10 if entity @e[tag=pick] run playsound minecraft:ui.stonecutter.take_result block @a[tag=ingame] ~ ~ ~ 2 1.2 1
execute if score @s casting2 matches 10 if entity @e[tag=pick] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"加雷斯","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你弃置一张牌后，随机将你的弃牌堆中的一张牌置入你的手牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]


tag @e remove targetmascot
tag @e remove targets
tag @e remove pass
tag @e remove pick
tag @s remove 123
