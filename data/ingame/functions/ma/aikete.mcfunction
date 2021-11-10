execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=mascot,scores={drawing=18}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 18 as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 if entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=mascot,scores={drawing=18}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 10 as @e[tag=card,scores={cardorder=1..}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 if entity @e[tag=target] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run scoreboard players set @e[tag=targetmascot] drawing 8
execute if score @s casting matches 10 as @e[tag=deck] if score @s ownedby = @e[tag=123,limit=1] ownedby at @s as @e[tag=targetmascot] run function ingame:effect/cannon_summon
execute if score @s casting matches 10 run scoreboard players add @e[tag=summon3] dmgtaken 5
execute if score @s casting matches 10 run particle minecraft:dust 1 0 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run playsound minecraft:block.ender_chest.open block @a[tag=ingame] ~ ~ ~ 3 0.1 1
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"艾克特","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你抽牌时，若你的牌堆数等于0，则改为对你造成5点伤害。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

tag @e remove summon3
tag @e remove target
tag @e remove targetmascot
tag @s remove 123
