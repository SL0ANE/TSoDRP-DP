execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=stun,tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=stun,tag=minion,scores={recover=-1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 as @e[tag=target] facing entity @s feet positioned ^ ^ ^0.5 run function ingame:effect/hammer_summon
execute if score @s casting matches 10 as @e[tag=summon3] run scoreboard players operation @s dmgtaken += @e[tag=123,limit=1,scores={attack=1..}] attack


execute if score @s casting matches 10 as @e[tag=target] at @s run particle minecraft:dust 0 1 1 2 ~ ~ ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:block.glass.break block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"杰兰特","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"永久拥有【重击】。每当你的回合开始时，对所有拥有【眩晕】的敌方随从造成等同于此随从攻击力的伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 if entity @e[tag=target] run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove target
tag @s remove 123
