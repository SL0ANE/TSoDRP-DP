execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=card,tag=beingused,tag=spell] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=card,tag=beingused,tag=spell] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 run tag @s add casted2
execute if score @s casting matches 10 as @e[tag=target] run function ingame:insertdeck_bottom


execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"元素使","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你使用一张法术牌后，将其置于你的牌堆底，每回合限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 if entity @e[tag=target] run particle minecraft:dust 1 1 1 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 10 as @e[tag=deck] if score @s ownedby = @e[tag=target,limit=1] ownedby at @s run particle minecraft:dust 1 1 1 1.6 ~ ~ ~ 0.5 0.5 0.5 0 100 force
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:ui.stonecutter.take_result block @a[tag=ingame] ~ ~ ~ 2 1.2 1

tag @e remove count
tag @e remove target
tag @s remove 123