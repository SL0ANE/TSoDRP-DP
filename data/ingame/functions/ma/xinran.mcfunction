


execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=minion,scores={dying=145}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 at @s as @e[tag=target] run function ingame:effect/buff_summon
execute if score @s casting matches 18 run tag @e[tag=summon3] add tough

execute if score @s casting matches 18 run particle minecraft:dust 1 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run playsound minecraft:block.anvil.land block @a[tag=ingame] ~ ~ ~ 2 2 1
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"欣冉","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当一个其他己方随从阵亡时，使其获得【坚韧】。每回合限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 18 run tag @s add casted2
tag @e remove summon3
tag @e remove target
tag @s remove 123

