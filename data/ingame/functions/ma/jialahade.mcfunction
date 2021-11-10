execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 unless entity @e[tag=target] as @e[tag=minion,tag=atktarget,scores={recover=-1}] if score @s minionboard = @e[tag=123,limit=1] minionboard unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 unless entity @e[tag=target] as @e[tag=minion,tag=atktarget,scores={recover=-1}] if score @s minionboard = @e[tag=123,limit=1] minionboard unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 if entity @e[tag=target] run scoreboard players set @s attacking 2
execute if score @s casting matches 10 run scoreboard players remove @e[tag=target] trueattack 2
execute if score @s casting matches 10 run scoreboard players add @e[tag=target] attacktime 1

execute if score @s casting matches 10 at @e[tag=target] run particle minecraft:dust 0.4 0.14 0 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:block.chain.place block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"加拉哈德","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击对位随从时，使其获得-2攻击力，然后改为令其发动攻击。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @e remove target
tag @s remove 123
