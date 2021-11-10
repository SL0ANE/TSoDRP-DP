execute if score @s casting2 matches 10 run scoreboard players add @s hp 1
execute if score @s casting2 matches 10 run scoreboard players add @s hplimit 1
execute if score @s casting2 matches 10 run scoreboard players add @s trueattack 1
execute if score @s casting2 matches 10 run scoreboard players add @s basic_attack 1
execute if score @s casting2 matches 10 run scoreboard players add @s basic_hp 1
execute if score @s casting2 matches 10 run playsound block.beacon.activate block @a[tag=ingame] ~ ~ ~ 3 1.3 1
execute if score @s casting2 matches 10 run particle minecraft:dust 2 0 0.5 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting2 matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"米迦勒","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从获得治疗后，使其永久获得+1/+1。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting2 matches 10 run scoreboard players set @s casting2 5