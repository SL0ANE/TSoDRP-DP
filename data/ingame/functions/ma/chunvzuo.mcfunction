execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=card,scores={dcpileorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute if score @s casting matches 18 as @e[tag=beingused] if score @s pack = @e[tag=targetcard,limit=1] pack run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1

execute if score @s casting matches 17 run tag @s add 123
execute if score @s casting matches 17 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:effect/healer_summon
execute if score @s casting matches 17 run scoreboard players set @e[tag=summon3] healtaken 2
execute if score @s casting matches 15 run tag @s add 123
execute if score @s casting matches 15 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run function ingame:effect/damage_summon
execute if score @s casting matches 15 run scoreboard players set @e[tag=summon3] dmgtaken 2

execute if score @s casting matches 17 run particle minecraft:dust 0.7 0.25 0.2 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 18 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"处女座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你使用一张牌后，若其与你的弃牌堆顶的一张牌来自相同卡包，则对敌方牌手造成2点伤害并为你恢复2点生命。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score @s casting matches 15 run scoreboard players set @s casting 5

tag @e remove summon3
tag @e remove targetcards
tag @e remove pass
tag @s remove 123
