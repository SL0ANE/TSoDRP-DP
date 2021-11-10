execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=mascot,scores={roundending=1..,mana=1..}] run tag @s add pass
execute if score @s casting matches 18 unless entity @e[tag=target] as @e[tag=card,scores={cardorder=1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 18 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 18 unless entity @e[tag=pass] run scoreboard players set @s casting 1

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=mascot] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetmascot
execute if score @s casting matches 10 unless entity @e[tag=target] as @e[tag=card,scores={cardorder=1}] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 unless entity @e[tag=target] run scoreboard players set @s casting 1
execute if score @s casting matches 10 as @e[tag=target] run function ingame:createcard
execute if score @s casting matches 10 as @e[tag=summon2] run scoreboard players operation @s ownedby = @e[tag=targetmascot] ownedby
execute if score @s casting matches 10 as @e[tag=summon2] run function ingame:inserthand


execute if score @s casting matches 10 if entity @e[tag=target] run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"金牛座","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当你的回合结束后，若你有至少1点能量，则将敌方牌手的牌堆顶的一张牌的一张复制置入你的手牌。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if score @s casting matches 10 if entity @e[tag=target] run particle minecraft:dust 1 1 0.4 1.6 ~ ~ ~ 0.3 0.3 0.3 0 30 force
execute if score @s casting matches 10 if entity @e[tag=target] run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1


tag @e remove pass
tag @e remove summon2
tag @e remove targetmascot
tag @e remove target
tag @s remove 123