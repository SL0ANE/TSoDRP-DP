execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=beingused,tag=trap] run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1


execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=beingused,tag=trap] run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run scoreboard players add @s trueattack 1
execute if score @s casting matches 10 run scoreboard players add @s hp 2
execute if score @s casting matches 10 run scoreboard players add @s hplimit 2


execute if score @s casting matches 10 run particle minecraft:dust 1.2 0.4 0.7 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run playsound block.beacon.activate block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"巨蟹座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当一名牌手使用一张陷阱牌后，使此随从获得+1/+2。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @s remove 123
tag @e remove target