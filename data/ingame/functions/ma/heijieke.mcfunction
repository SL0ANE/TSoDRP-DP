execute if score @s casting matches 18 run tag @s add 123
execute if score @s casting matches 18 as @e[tag=card,scores={cardorder=1}] if score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add targetcard
execute if score @s casting matches 18 unless entity @e[tag=targetcard] run scoreboard players set @s casting 1
execute if score @s casting matches 18 as @e[tag=targetcard] run tag @s add folding

execute if score @s casting matches 10 run tag @s add 123
execute if score @s casting matches 10 as @e[tag=mascot] unless score @s ownedby = @e[tag=123,limit=1] ownedby run tag @s add target
execute if score @s casting matches 10 run tag @s add casted2

execute if score @s casting matches 10 at @s as @e[tag=target] run function ingame:effect/cannon_summon
execute if score @s casting matches 10 run scoreboard players operation @e[tag=summon3] dmgtaken += @e[tag=123] attack
execute if score @s casting matches 10 run particle minecraft:dust 0 1 1 2 ~ ~0.2 ~ 0.2 0.2 0.2 0 30 force
execute if score @s casting matches 10 run playsound minecraft:entity.illusioner.cast_spell block @a[tag=ingame] ~ ~ ~ 3 2 1
execute if score @s casting matches 10 run tellraw @a[tag=ingame] [{"text":"▶▶▶","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"    ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"黑杰克","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":"每当此随从攻击后，弃置你的牌堆顶的一张牌，然后对敌方牌手造成等同于此随从攻击力的伤害。每回合限一次。"}},{"text":"发动技能！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"目标：","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@e[tag=target]","color":"yellow","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]



tag @e remove summon3
tag @e remove targetcard
tag @e remove target
tag @s remove 123
